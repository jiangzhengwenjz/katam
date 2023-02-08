// Copyright(c) 2016 YamaArashi
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#include <string>
#include <stack>
#include "preproc.h"
#include "asm_file.h"
#include "c_file.h"
#include "charmap.h"

Charmap* g_charmap;

void PrintAsmBytes(unsigned char *s, int length)
{
    if (length > 0)
    {
        std::printf("\t.byte ");
        for (int i = 0; i < length; i++)
        {
            std::printf("0x%02X", s[i]);

            if (i < length - 1)
                std::printf(", ");
        }
        std::putchar('\n');
    }
}

void PreprocAsmFile(std::string filename)
{
    std::stack<AsmFile> stack;

    stack.push(AsmFile(filename));

    for (;;)
    {
        while (stack.top().IsAtEnd())
        {
            stack.pop();

            if (stack.empty())
                return;
            else
                stack.top().OutputLocation();
        }

        Directive directive = stack.top().GetDirective();

        switch (directive)
        {
        case Directive::Include:
            stack.push(AsmFile(stack.top().ReadPath()));
            stack.top().OutputLocation();
            break;
        case Directive::String:
        {
            unsigned char s[kMaxStringLength];
            int length = stack.top().ReadString(s);
            PrintAsmBytes(s, length);
            break;
        }
        case Directive::Unknown:
        {
            std::string globalLabel = stack.top().GetGlobalLabel();

            if (globalLabel.length() != 0)
            {
                const char *s = globalLabel.c_str();
                std::printf("%s: ; .global %s\n", s, s);
            }
            else
            {
                stack.top().OutputLine();
            }

            break;
        }
        }
    }
}

void PreprocCFile(const char * filename, bool isStdin)
{
    CFile cFile(filename, isStdin);
    cFile.Preproc();
}

char* GetFileExtension(char* filename)
{
    char* extension = filename;

    while (*extension != 0)
        extension++;

    while (extension > filename && *extension != '.')
        extension--;

    if (extension == filename)
        return nullptr;

    extension++;

    if (*extension == 0)
        return nullptr;

    return extension;
}

int main(int argc, char **argv)
{
    if (argc < 2 || argc > 4)
    {
        std::fprintf(stderr, "Usage: %s SRC_FILE CHARMAP_FILE(optional) [-i]\nwhere -i denotes if input is from stdin\n", argv[0]);
        return 1;
    }

    if (argc == 2
        || (argv[2][0] == '-' && argv[2][1] == 'i' && argv[2][2] == '\0')) // ./preproc xxx.c or ./preproc xxx.c -i
        g_charmap = new (std::nothrow) Charmap("");
    else
        g_charmap = new (std::nothrow) Charmap(argv[2]);
    if (!g_charmap)
        FATAL_ERROR("Failed to allocate space for Charmap.\n");

    char* extension = GetFileExtension(argv[1]);

    if (!extension)
        FATAL_ERROR("\"%s\" has no file extension.\n", argv[1]);

    if ((extension[0] == 's') && extension[1] == 0)
        PreprocAsmFile(argv[1]);
    else if ((extension[0] == 'c' || extension[0] == 'i') && extension[1] == 0)
    {
        int flagIdx = 0;

        switch (argc)
        {
        case 4:
            flagIdx = 3; // ./preproc xxx.c charmap.txt -i
            break;
        case 3:
            if (argv[2][0] == '-' && argv[2][1] == 'i' && argv[2][2] == '\0') // ./preproc xxx.c -i
                flagIdx = 2;
            break;
        }

        if (flagIdx)
        {
            // skip the check for argc==3 since this is already done when setting flagIdx
            if (argc == 3 || (argv[flagIdx][0] == '-' && argv[flagIdx][1] == 'i' && argv[flagIdx][2] == '\0'))
                PreprocCFile(argv[1], true);
            else
                FATAL_ERROR("unknown argument flag \"%s\".\n", argv[flagIdx]);
        }
        else
            PreprocCFile(argv[1], false);
    }
    else
        FATAL_ERROR("\"%s\" has an unknown file extension of \"%s\".\n", argv[1], extension);

    return 0;
}
