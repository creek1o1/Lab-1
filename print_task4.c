#include <stdio.h>

extern unsigned char ram[]; // Ram declared in assembly
extern void fill_ram(void);

int main() {
    fill_ram();

    printf("RAM content from 50H:\n");
    printf("%u\n", ram[0x50]);
    printf("\n");
    return 0;
}