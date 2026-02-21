.section .bss
.global ram
.lcomm ram, 256    # Reserve 256 bytes of RAM (uninitialized memory)

.section .text
.globl fill_ram    # Make function visible to C program

fill_ram:
    # Store sum into RAM location 50H using indirect addressing
    movl $0, %eax
    movl $0, %ecx

    start_loop:
        cmpl $10, %ecx
        jg end_loop

        addl %ecx, %eax
        incl %ecx
        jmp start_loop
    end_loop:

    movl %eax, ram+0x50
    
    ret         # Return control back to C program

.section .note.GNU-stack,"",@progbits
    