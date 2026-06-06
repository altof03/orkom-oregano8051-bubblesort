ORG 0000H
JMP SETUP

ORG 0030H
SETUP:
    
    MOV 40H, #05H
    MOV 41H, #02H
    MOV 42H, #09H
    MOV 43H, #01H
    MOV 44H, #03H

MAIN:
    MOV R6, #05H       
    DEC R6            

LOOP_LUAR:
    MOV A, R6
    MOV R7, A          
    MOV R0, #40H       

LOOP_DALAM:
    MOV A, R0
    ADD A, #01H
    MOV R1, A          

   
    MOV A, @R0        
    MOV B, A           
    MOV A, @R1        

    
    CJNE A, B, CEK_BESAR 
    JMP LANJUT

CEK_BESAR:
    JNC LANJUT         
    
    MOV @R0, A         
    MOV A, B           
    MOV @R1, A         

LANJUT:
    INC R0             
    DJNZ R7, LOOP_DALAM

    DJNZ R6, LOOP_LUAR

SELESAI:
    SJMP SELESAI       
END