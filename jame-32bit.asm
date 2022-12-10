
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small ;CS 32 , DS 32

;---------------------------

.stack 3

;---------------------------
.data
word1_a dw 1111h
word1_b dw 2222h  

word2_a dw 0FFFFh
word2_b dw 2222h


;---------------------------
.code

MAIN:  ;LSD==> AX
       ;MSD==> BX

       ;meghdar dehi DS
       mov AX,@data
       mov DS,AX 
       
       mov AX,00h
       mov BX,00h
       
       add AX,word1_a
       add AX,word2_a
       
       adc BX,00 ;adding carry to BX
       
       add BX,word1_b
       add BX,word2_b
       
END MAIN
       
       
       




