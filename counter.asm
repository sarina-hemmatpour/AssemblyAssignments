
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small ;CS 32 , DS 32

;---------------------------

.stack 100h

;---------------------------

.data
    
    
    string DB 30 
           DB ? 
           DB 30 dup(0)
             
    
            
    result DB ? ,'$'
    
    counter DB 00 ,'$'
    

;---------------------------
.code

MAIN: 
              
      
      mov AX,@data
      mov DS,AX
      
      
      
      
      ;input sentence
      mov DX,offset string
      mov AH ,0Ah
      int 21h
      
      
      ;adding space insteadof enter at the end of the sentence
      inc DX
      mov SI,DX    ;SI eshare mikone be byte e dovom az reshteye 'string'
      
      mov CL,[SI]  ;CL alan shamele tedad char hayi ast ke user vared karde
      mov CH,0 
      
      add SI,CX    ;SI eshare mikone be akharin char
      
      inc SI       ;eshare mikone be enter ke mikhaym ba $ taghiresh bedim
      
      mov [SI] , ' '
      ;--------------------
      
      
      
      mov SI,offset string
      inc SI
      
      inc SI
      
      inc CX
      
      
COUNTERLOOP: 
      cmp [SI] , ' '
      JE THEN
      
NEXT: 
      inc SI
      dec CX
      jnz COUNTERLOOP
      jz END
      
      
      



THEN:
      inc counter
      jmp NEXT
      
      
      
      ;mov SI, offset result
      ;mov CX,counter
      ;mov [SI],DX
      
      ;printing result
      
END:  mov DI, offset counter 
      
      mov DL ,[DI]
      mov DH,00
      
      add DX ,30h
      ;mov DX, offset counter  

      mov AH,02h
      int 21h
     
      
      
      
       
            
END MAIN
            
       
       
           
           
     

    



