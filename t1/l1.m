
pkg load symbolic;

syms R1;
syms R2;
syms R3;
syms R4;
syms R5;
syms R6;
syms R7;
syms Va;
syms Id;
syms Kc;
syms Kb;
syms G1;
syms G2;
syms G3;
syms G4;
syms G5;
syms G6;
syms G7;




R1 = 1.01773217242 
R2 = 2.03948988085 
R3 = 3.10357199184 
R4 = 4.0184028756 
R5 = 3.12610582456 
R6 = 2.03197453651 
R7 = 1.01768274683 
Va = 5.18298893269 
Id = 1.01054055355 
Kb = 7.21477608708 
Kc = 8.39285710297 

G1=1/R1;
G2=1/R2;
G3=1/R3;
G4=1/R4;
G5=1/R5;
G6=1/R6;
G7=1/R7;




A= [R1+R3+R4 -R3 -R4 0
-R3 R2+R3+R5 0 -R5
-R3*Kb -1+R3*Kb 0 0
-R4 0 R4+R6+R7-Kc 0
0 -R5 Kc R5
0 0 0 1];

B=[Va
0
0
0
0
-Id];


CUR=A\B;


C= [1 0 0 -1 0 0 0 0
-G1 G3+G1+G2 -G2 0 -G3 0 0 0
0 -G2-Kb G2 0 Kb 0 0 0
0 0 0 G4+G6 -G4 -G6 0 0
0 0 0 -Kc*G6 1 0 0 -1
0 -G3 0 -G4 G4+G5+G3 -G5 0 0
0 Kb 0 0 -G5-Kb G5 0 0
0 0 0 -G6 0 0 G6+G7 -G7
0 0 0 0 0 0 -G7 G7];

D=[Va 0 0 0 0 0 Id 0 -Id]';


TEN=C\D;


I1=CUR(1)
I2=CUR(2)
I3=CUR(3)
I4=CUR(4)

V1=TEN(1)
V2=TEN(2)
V3=TEN(3)
V4=TEN(4)
V5=TEN(5)
V6=TEN(6)
V7=TEN(7)
V8=TEN(8)

