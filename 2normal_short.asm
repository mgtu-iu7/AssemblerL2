;не эмулируется почти ничего, кроме метода и одного регистра R0 зато короткая  
  $ADR 0000h;автодекрементная	
nc: 
LXI SP,00b0h; 0b00 
IN 20h;
STA 0b00h;
IN 25h;
STA 0b01h
POP B;  sp = 0b02h
MVI A,B;
CMA A;
MVI B,A;
MVI A,C;
CMA A;
MVI C,A;
PUSH B;
LXI SP,0faeh; 0afe
end: JMP nc; 

   $ADR 0000h; индексная прямая
LXI H,0b00h; 0b00 
IN 20h;
STA 0b00h;
IN 25h;
STA 0b01h
MOV a,M; a=(HL)
CMA A;
MVI B,A;
INX H;
MOV A,M;
CMA A;
MVI C,A;
LXI SP, 00b2h; 0b02
PUSH B;
end:; 
