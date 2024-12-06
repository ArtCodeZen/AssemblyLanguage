.section .data
    msg: 
            .ascii "Hello World\n"
.section .text
.globl main
main:
        movl $4, %eax           #syscall number for write syscall
        movl $1, %ebx           #file descriptor for write syscall
        movl $msg, %ecx         #moving buffer pointer to write syscall
        movl $13, %edx          #moving the buffer size in bytes
        int $0x80               #interrupt

        movl $1, %eax           #1 is syscal number for exit syscall
        movl $0, %ebx           #argument for exit syscall
        int $0x80

