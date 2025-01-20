; boot.asm: A minimal bootloader

[org 0x7c00]          ; Origin for bootloaders
mov ah, 0x0e          ; BIOS teletype function
mov al, 'H'
int 0x10              ; Print 'H' to screen
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
mov al, 'l'
int 0x10
mov al, 'o'
int 0x10
mov al, ','
int 0x10
mov al, ' '
int 0x10
mov al, 'W'
int 0x10
mov al, 'o'
int 0x10
mov al, 'r'
int 0x10
mov al, 'l'
int 0x10
mov al, 'd'
int 0x10
mov al, '!'
int 0x10
mov al, 'B'
int 0x10
mov al, '3'
int 0x10
mov al, 'U'
int 0x10


hlt                  ; Halt the CPU

times 510-($-$$) db 0 ; Fill remaining bytes with 0
dw 0xaa55            ; Boot signature
