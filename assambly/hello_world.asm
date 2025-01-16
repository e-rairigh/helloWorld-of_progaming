
section .data
    
    msg: db "Hello, world!", 10

    
    .len: equ $ - msg


section .text
  
  global _start

_start:
    mov     rax, 4  
    mov     rdi, 1          
    mov     rsi, qword msg  
                            
    mov     rdx, msg.len    
    syscall                 

    mov     rax, 1  
    mov     rdi, 0          
    syscall                 