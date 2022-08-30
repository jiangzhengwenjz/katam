#include "data.h"
#include "malloc_ewram.h"

/* At the very beginning, there's only one node. */
void EwramInitHeap(void)
{
    gEwramHeap.next = NULL;
    gEwramHeap.state = 0x20080;
}

void *EwramMalloc(u32 req)
{
    struct EwramNode *node;
    s32 count = req;

    count = (req + 3) >> 2; // round up and get word count
    if (count)
    {
        count = count * 4 + sizeof(struct EwramNode);
        node = &gEwramHeap;
        /* linear search */
        while (1)
        {
            if (count <= (u32)node->state)
            {
                /* 
                 * Space corresponding to the node matches requested size. 
                 * This means, we can directly use this node for the request
                 * w/o any adjustment. 
                 */
                if (count == node->state)
                {
                    node->state = -count; // busy
                    return node->space;
                }

                /*
                 * Node has too much space. 
                 * This means, we need to construct a new node so that space won't
                 * get wasted. 
                 */
                if (count + (s32)sizeof(struct EwramNode) <= node->state)
                {
                    struct EwramNode *addr = (void *)((u8 *)node + count);

                    addr->next = node->next;
                    ++node; --node;
                    addr->state = node->state - count; // Surplus space belongs to the new node. 
                    node->next = addr;
                    node->state = -count; // busy
                    return node->space;
                }
            }
            ++count; --count;
            if (!node->next)
                return ewram_end;
            node = node->next;
        }
    }
    return ewram_end;
}

void EwramFree(void *p)
{
    struct EwramNode *node, *slow, *fast, *tmp;

    if (p && ewram_end != p)
    {
        node = p - sizeof(struct EwramNode);

        /* find parent of node */
        for (fast = slow = &gEwramHeap;
             node != fast;
             fast = fast->next)
            slow = fast;
        
        if (node->state < 0) // It should always be true if the function is called properly. 
            node->state = -node->state; // free

        /*
         * Parent node and child node are adjacent. 
         * In this case we simply merge child into parent. 
         */
        if ((void *)slow + slow->state == node && slow->state > 0)
        {
            slow->next = fast->next;
            slow->state += node->state;
            node = slow;
        }

        /*
         * Similar to above check, but different direction. 
         * Merge if the next node is adjacent. 
         */
        tmp = (void *)node + node->state;
        if (tmp == node->next
            && tmp->state > 0)
        {
            node->state += tmp->state;
            node->next = tmp->next;
        }
    }
}
