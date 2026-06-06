ORG 0000H
JMP SETUP
ORG 0030H
SETUP:
    ; set data awal di ram eksternal (alamat 40H-44H)
    MOV R0, #40H
    MOV A, #05H
    MOVX @R0, A
    MOV R0, #41H
    MOV A, #02H
    MOVX @R0, A
    MOV R0, #42H
    MOV A, #09H
    MOVX @R0, A
    MOV R0, #43H
    MOV A, #01H
    MOVX @R0, A
    MOV R0, #44H
    MOV A, #03H
    MOVX @R0, A
MAIN:
    MOV R6, #05H       ; jumlah elemen = 5
    DEC R6             ; batas iterasi luar
LOOP_LUAR:
    MOV A, R6
    MOV R7, A          ; set counter loop dalam
    MOV R0, #40H       ; pointer awal
LOOP_DALAM:
    MOV A, R0
    ADD A, #01H
    MOV R1, A         
    MOVX A, @R0        
    MOV B, A           
    MOVX A, @R1        
    
    CJNE A, B, CEK_BESAR 
    JMP LANJUT
CEK_BESAR:
    JNC LANJUT        
    MOVX @R0, A        
    MOV A, B           
    MOVX @R1, A       
LANJUT:
    INC R0             ; geser pointer
    DJNZ R7, LOOP_DALAM
    DJNZ R6, LOOP_LUAR
SELESAI:
    SJMP SELESAI       ; halt program
END