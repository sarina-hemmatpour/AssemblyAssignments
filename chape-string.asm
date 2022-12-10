
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small ;CS 32 , DS 32

;---------------------------

.stack 100h

;---------------------------

.data
    
    string DB 26 , ? , 26 dup(0)
    

;---------------------------
.code

MAIN: 
              
      ;input
      mov AX,@data
      mov DS,AX
      
      mov DX, offset string       
      
      mov AH,0Ah ;printing a string        
      int 21h 
      
      
      ;adding $
      
      inc DX
      mov SI,DX    ;SI eshare mikone be byte e dovom az reshteye 'string'
      
      mov CL,[SI]  ;CL alan shamele tedad char hayi ast ke user vared karde
      mov CH,0 
      
      add SI,CX    ;SI eshare mikone be akharin char
      
      inc SI       ;eshare mikone be enter ke mikhaym ba $ taghiresh bedim
      
      mov [SI] , '$'
      
      
      ;printing (output)  
      
      mov AH,09h
      inc dx ;eshare kone be byte i az 'string' ke char ha tush zakhire shode
      int 21h
      
      
      
      
      
               
       
            
            
END MAIN
            
       
       
           
           
     

    



