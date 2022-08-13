org 100h 
 
include 'emu8086.inc'  
DEFINE_SCAN_NUM
DEFINE_PRINT_STRING
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

jmp inicio 

menu1 db 13,10,'Division de numeros',13,10,

db 13,10,13,10,'Digite el Dividendo: $' 
texto2 db 13,10,13,10,'Digite el Divisor: $'   

texto6 db 13,10,'La Divison es: $'  
 
num1 dw ? 
num2 dw ? 
 
inicio: 
 
mov ah,09 
lea dx,menu1 
int 21h  
 
call SCAN_NUM  
mov num1,cx  
 
mov ah,09 
lea dx,texto2  
int 21h 
 
call SCAN_NUM  
mov num2,cx 
 
mov ah,09 
lea dx,texto6
int 21h 
xor dx,dx 

mov ax,num1 
mov bx,num2 
div bx 
call PRINT_NUM