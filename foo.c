#include <stdio.h>

 int foo(int arg1, int arg2)
{
    puts("Hello, I'm a shared library");
    return arg1 * arg2;
}
