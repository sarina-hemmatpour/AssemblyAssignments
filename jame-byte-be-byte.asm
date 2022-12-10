
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small ;CS 32 , DS 32

;---------------------------

.stack 3

;---------------------------

.data
    
    array1 DB 0FFh, 02h, 03h, 04h
    array2 DB 05h, 06h, 07h, 08h
    
    sum DW 0h, 0h, 0h, 0h
    
    counter EQU 4

;---------------------------
.code

MAIN:

       ;meghdar dehi DS
       mov AX,@data
       mov DS,AX
       mov Ax,00h
       
       mov CX , counter
       
       mov SI , offset array1 ;eshare be array1
       
       mov DI , offset sum    ;eshare be sum
       
       ;offset2 DB 0h
       mov BX , offset array2 ;eshare be array2
      
       
       
   LOOPBACK: 
            mov Ax,00h
            add AL,[SI]       ;AX=array1[SI]
            adc AH,00         ;jam ba carry   
            
            add AL,[BX]
            adc AH,00         ;AX=array1[SI] + array2[BX]
            
            mov [DI] , AX     ;save to sum
            
            inc SI
            inc BX
            inc DI 
            inc DI  ;chon word(2B) e 2 ta behesh ezafe mikonim
            dec CX
            
            jnz LOOPBACK 
            
            
END MAIN
            
       
       
           
           
     

    



