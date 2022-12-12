section .data
    msg db "Hello World!",0xa  ; the message to print
    len equ $-msg              ; the length of the message

section .text
    global _start             ; entry point

_start:
    ; write the message to the standard output
    mov eax, 4                ; the syscall for write
    mov ebx, 1                ; the file descriptor for stdout
    mov ecx, msg              ; the memory address of the message
    mov edx, len              ; the length of the message
    int 0x80                  ; call the kernel

    ; exit the program
    mov eax, 1                ; the syscall for exit
    xor ebx, ebx              ; exit code 0
    int 0x80                  ; call the kernel

; In the code above, the section .data block is used to define a string of text (the "Hello World" message) that will be output by the program. The section .text block contains the instructions that the program will execute. The global _start line specifies that the _start label marks the entry point of the program.

; The mov instructions are used to load values into registers, and the int 0x80 instruction is used to call a system call (a request for the operating system to perform a specific action). In this case, the write syscall is called to write the message to the standard output, and the exit syscall is called to end the program.

