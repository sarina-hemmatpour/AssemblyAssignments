
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small ;CS 32 , DS 32

;---------------------------

.stack 100h

;---------------------------

.data
    
    message1 DB 'Enter two numbers: ', '$'
    message2 DB 'The answer is ', '$'
            
    result DB ? ,'$'
    

;---------------------------
.code

MAIN: 
              
      
      mov AX,@data
      mov DS,AX
      
      mov DX, offset message1 
      
      ;printing 'Enter two numbers'
      mov AH,09h
      int 21h
      
      
      
      ;input number1
      mov AH ,01h
      int 21h
      
      mov BL , AL 
      
      ;input number2
      mov AH ,01h
      int 21h
             
             
                    
      
      
     
      
      cmp AL , BL
      
      jnge LOWER
      
      
      
      
      
      GREATER:
              sub AL , BL 
              
              mov DI, offset result
              
              mov [DI],AL
              
              JMP NEXT
              
              
      LOWER:
              sub BL , AL 
              
              mov DI, offset result
              
              mov [DI],BL
              
      
      
      NEXT:
      
              mov DX, offset message2 
      
              ;printing 'The answer is'
              mov AH,09h
              int 21h
              
              
              ;printing result
      
              ;mov DX, offset result 
              
  
              ;mov AH,09h
              ;int 21h     
              
              
              ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
              mov DI, offset result 
      
              mov DL ,[DI]
              mov DH,00
              
              add DX ,30h
              ;mov DX, offset counter  
        
              mov AH,02h
              int 21h
              
      
      
      
      
      
   
      
      
      
      
               
       
            
            
END MAIN
            
       
       
           
           
     

    



