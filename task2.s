.section .bss
.global ram
.lcomm ram, 256     # Reserve 256 bytes of RAM (uninitialized memory)

.section .text
.globl fill_ram    # Make function visible to C program

fill_ram:
    # Store FFH into RAM location 50H - 58H using direct addressing
    
    mov $0xFF, %eax
    mov %eax, ram+0x50
    mov %eax, ram+0x51
    mov %eax, ram+0x52
    mov %eax, ram+0x53
    mov %eax, ram+0x54
    mov %eax, ram+0x55
    mov %eax, ram+0x56
    mov %eax, ram+0x57
    mov %eax, ram+0x58
    
    ret         # Return control back to C program

.section .note.GNU-stack,"",@progbits

    