    5 CLS:KEY OFF:SCREEN 1
   10 REM muveletek tortekkel
   20 W=VAL(MID$(TIME$,7,2))
   30 RANDOMIZE W
   40 F=0
   50 LOCATE 10,10,:PRINT"MÜVELETEK TÖRTEKKEL"
   60 X$=INPUT $(1):CLS
   70 PRINT:PRINT:PRINT:PRINT"A kÖvetkezÖ program tÖrtek Összeadåsåt  és kivonåsåt gyakoroltatja."
   80 PRINT:PRINT:PRINT"Neked csak az eredményt kell a billen-  tyÜzet segítségével beírnod, mindig a   gép ålltal kérdezett szåmot, tehåt vagy a szåmlålót, vagy a nevezÖt."
   90 PRINT:PRINT:PRINT"Minden vålasz utån az ENTER billentyÜt  kell lenyomnod."
  100 PRINT:PRINT"Lapozåshoz tetszÖleges billentyÜt hasz- nålj!                                                                                                                               Jó MUNKÅT!"
  110 X$=INPUT $(1):CLS
  120 H=0
  130 FOR I=1 TO 5
  140 GOSUB 500
  150 LOCATE 3*I,1,:PRINT S1:LOCATE 3*I+1,1,:PRINT N1
  160 LINE (6,(3*I)*8-1)-(18,(3*I)*8-1)
  170 GOSUB 700
  180 LOCATE 3*I,5,:PRINT S2:LOCATE 3*I+1,5,:PRINTN2
  190 LINE (38,I*3*8-1)-(50,I*8*3-1)
  195 LINE (56,I*3*8+1)-(64,I*3*8+1):LINE (56,I*3*8-1)-(64,I*3*8-1)
  200 GOSUB 800
  210 GOSUB 840
  220 LOCATE 18,10,:PRINT"         ":LOCATE 18,1,:PRINT"a kÖzÖs nevezÖ";:INPUT NN
  230 IF KN<>NN THEN GOSUB 600:LOCATE 18,22,:PRINT"rossz":GOTO 210
  240 GOSUB 650
  250 LOCATE I*3+1,11,:PRINT NN:LOCATE 18,16,:PRINT"            "
  260 LOCATE 18,10,:PRINT"         ":LOCATE 18,1,:PRINT"az 1. szåmlåló";:INPUT ES
  270 IF ES<>Z1 THEN GOSUB 600:LOCATE 18,22,:PRINT"rossz!":GOTO 260
  280 GOSUB 650
  290 LOCATE I*3,9,:PRINT ES:LOCATE 18,16,:PRINT"            ":GOSUB 800
  300 LOCATE 18,10,:PRINT"          ":LOCATE 18,1,:PRINT"a 2. szåmlåló";:INPUT MS
  310 IF MS<>Z2 THEN GOSUB 600:LOCATE 18,22,:PRINT"rossz!":GOTO 300
  320 GOSUB 650
  330 LOCATE I*3,12,:PRINT MS:LOCATE 18,16,:PRINT"            ":GOSUB 800
  340 GOSUB 670
  350 LOCATE 18,10,:PRINT"          ":LOCATE 18,1,:PRINT"  a szåmlåló";:INPUT SS
  360 IF SS<>KS THEN GOSUB 600:LOCATE 18,22,:PRINT"rossz!":GOTO 350
  370 GOSUB 650
  375 LOCATE I*3+1,17,:PRINT KN
  380 LOCATE I*3,17,:PRINT SS:LOCATE 18,16,:PRINT"             ":GOSUB 670
  390 GOSUB 630
  400 IF SS=KS THEN GOTO 450
  405 LINE (20*8,I*8*3-1)-(21*8,I*8*3-1):LINE (20*8,I*8*3+1)-(21*8,I*8*3+1)
  410 GOSUB 750
  420 LOCATE 18,10,:PRINT"           ":LOCATE 18,1,:PRINT"  a szåmlåló";:INPUT EUS
  430 IF EUS<>KS THEN GOSUB 600:LOCATE 18,22,:PRINT"rossz!":GOTO 420
  435 GOSUB 650
  437 LOCATE I*3,22,:PRINT EUS:LOCATE 18,16,:PRINT"             ":GOSUB 750
  440 LOCATE 18,1,:PRINT"          ":LOCATE 18,1,:PRINT"  a nevezÖ";:INPUT EUN
  444 IF EUN<>KN THEN GOSUB 600:LOCATE 18,22,:PRINT"rossz!":GOTO 440
  448 GOSUB 650
  449 LOCATE I*3+1,22,:PRINT EUN:LOCATE 18,16,:PRINT"             ":GOSUB 750
  450 LOCATE 18,1,:PRINT"                "
  460 NEXT I
  465 X$=INPUT $(1)
  470 CLS
  475 GOTO 130
  480 STOP
  500 REM tortek generalasa
  510 M=INT(RND*2):IF M=0 THEN M$="+"::ELSE M$="-"
  520 S1=INT(RND*9)+1
  530 N1=INT(RND*8)+2:IF INT(S1/N1)=S1/N1 THEN GOTO 530
  540 S2=INT(RND*9)+1
  550 N2=INT(RND*8)+2:IF INT(S2/N2)=S2/N2 THEN GOTO 550
  560 IF N1=N2 THEN GOTO 550
  570 IF M$="-" AND (S1/N1-S2/N2)<0 THEN GOTO 540
  580 RETURN
  600 REM hibak szamolasa
  610 H=H+1:GOSUB 650
  620 RETURN
  630 REM egyszerusites
  635 IF KS/4-INT(KS/4)+KN/4-INT(KN/4)=0 THEN KS=KS/4:KN=KN/4
  637 IF KS/3-INT(KS/3)+KN/3-INT(KN/3)=0 THEN KS=KS/3:KN=KN/3
  639 IF KS/2-INT(KS/2)+KN/2-INT(KN/2)=0 THEN KS=KS/2:KN=KN/2
  640 RETURN
  650 REM ertekeles
  655 F=F+1
  657 LOCATE 20,16,:PRINT"hiba:  ":LOCATE 20,22,:PRINTH
  660 LOCATE 21,9,:PRINT"részfeladat:  ":LOCATE 21,22,:PRINT F
  665 LOCATE 22,10,:PRINT"osztålyzat:  ":LOCATE 22,22,:PRINT INT((F-H)/F*5+.5)
  667 RETURN
  670 REM kozos nevezo kiirasa
  680 LOCATE I*3+1,12,:PRINT NN
  690 LINE (17*8,I*8*3-1)-(19*8,I*8*3-1)
  692 LINE (15*8,I*8*3-1)-(16*8,I*8*3-1):LINE (15*8,I*8*3+1)-(16*8,I*8*3+1)
  695 RETURN
  700 REM muveleti jel a tortek kozott
  710 IF M$="+" THEN LINE (24,I*3*8-1)-(33,I*3*8-1):LINE (28,I*3*8-4)-(28,I*3*8+2)
  720 IF M$="-" THEN LINE (23,I*3*8-1)-(33,I*3*8-1)
  730 RETURN
  750 REM egyszerusites utani tortvonal
  760 LINE (22*8,I*3*8-1)-(24*8,I*3*8-1)
  770 RETURN
  800 REM muveleti jel es tortvonal
  810 LOCATE I*3,12,:PRINT M$
  815 LINE (72,I*3*8-1)-(112,I*3*8-1)
  830 RETURN
  840 REM kozos nevezo szamitasa
  845 KN=N1*N2
  850 IF INT(N2/4)=N2/4 AND INT(N1/4)=N1/4 THEN KN=KN/4:GOTO 860
  855 IF INT(N2/2)=N2/2 AND INT(N1/2)=N1/2 THEN KN=KN/2
  860 IF INT(N2/3)=N2/3 AND INT(N1/3)=N1/3 THEN KN=KN/3
  865 B1=KN/N1:Z1=S1*B1
  870 B2=KN/N2:Z2=S2*B2
  875 IF M$="+" THEN KS=Z1+Z2::ELSE KS=Z1-Z2
  880 RETURN
