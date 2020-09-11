#include "data.h"
#include "malloc_ewram.h"

void EwramInitHeap(void)
{
    gUnk_02000000.next = NULL;
    gUnk_02000000.unk4 = 0x20080;
}

void *EwramMalloc(u32 req)
{
    struct EwramNode *node;
    s32 count = req;

    count = (req + 3) >> 2; // round up and get word count
    if (count)
    {
        count = count * 4 + 8; // 8 is for next and unk4
        node = &gUnk_02000000;
        while (1)
        {
            if (count <= (u32)node->unk4)
            {
                if (count == node->unk4)
                {
                    node->unk4 = -count;
                    return node->space;
                }

                if (count + 8 <= node->unk4)
                {
                    struct EwramNode *addr = (void *)&node->space[count - 8];

                    addr->next = node->next;
#ifndef NONMATCHING
                    asm("":::"memory"); // or you can do *(volatile u32 *)&node->unk4
#endif
                    addr->unk4 = node->unk4 - count;
                    node->next = addr;
                    node->unk4 = -count;
                    return node->space;
                }
            }
            ++count; --count;
            if (!node->next)
                return gUnk_0203ADE4;
            node = node->next;
        }
    }
    return gUnk_0203ADE4;
}

void EwramFree(void *p)
{
    struct EwramNode *node, *slow, *fast, *tmp;

    if (p && gUnk_0203ADE4 != p)
    {
        node = p - 8;

        /* find parent of node */
        for (fast = slow = &gUnk_02000000;
             node != fast;
             fast = fast->next)
            slow = fast;
        
        if (node->unk4 < 0)
            node->unk4 = -node->unk4;

        if ((void *)slow + slow->unk4 == node && slow->unk4 > 0)
        {
            slow->next = fast->next;
            slow->unk4 += node->unk4;
            node = slow;
        }

        tmp = (void *)node + node->unk4;
        if (tmp == node->next
            && tmp->unk4 > 0)
        {
            node->unk4 += tmp->unk4;
            node->next = tmp->next;
        }
    }
}
