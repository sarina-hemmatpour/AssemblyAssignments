
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small ;CS 32 , DS 32

;---------------------------

.stack 3

;---------------------------

.data
    
    words DW 0CDBFh, 0C2h, 13h, 04h
    
    counter EQU 4

;---------------------------
.code

MAIN:

       mov AX,@data
       mov DX,AX
       
       
       mov CX,counter
       
       mov SI,offset words
       
       
       LOOPBACK:
                mov AX , 00
                mov BX , 00
       
                mov AX ,[SI] 
                
                mov BL,AL
                mov AL,AH
                mov AH,BL
                
                mov [SI],AX
                
                inc SI
                inc SI
                dec CX
                
                jnz LOOPBACK
       
                
       
            
            
END MAIN
            
       
       
           
           
     

    



