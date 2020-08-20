    5 CLS
    6 SCREEN 1
   10 W=VAL (MID$(TIME$,7,2))
   20 REM szorzas, osztas tiz hatvanyaival"
   30 CLS:KEY OFF
   40 LOCATE 10,25,:PRINT"     SZORZÅS, OSZTÅS TíZ HATVÅNYAIVAL"
   50 X$=INPUT $(1):CLS
   60 DIM B$(20)
   80 PRINT:PRINT:PRINT:PRINT"A kÖvetkezÖ program a 10 hatvånyaival   való szorzåst, osztåst gyakoroltatja."
   90 PRINT:PRINT:PRINT"Neked csak a végeredményt kell a billen-tyÜzet segítségével beírnod."
   95 PRINT:PRINT:PRINT:PRINT"Tizedes vesszÖ helyett tizedes pontot   hasznålj! (pl.:3.14)"
  100 PRINT:PRINT:PRINT"Lapozåskor tetszÖleges billentyÜt kell  lenyomnod.":PRINT:PRINT:PRINT:PRINT"        Jó MUNKÅT!"
  110 X$=INPUT $(1):CLS
  120 F=F+1:PRINT:PRINT"Milyen nehéz feladatot kérsz?                   1 - kÖnnyÜ                              2 - kÖzepes                             3 - nehéz"
  130 X$=INPUT $(1)
  140 IF X$="1" OR X$="2" OR X$="3"THEN GOTO 150 ::ELSE GOTO 130
  150 CLS:PRINT:JR=0
  160 FOR I=1 TO 10
  165 RANDOMIZE W:M=INT(RND*2):IF M=0 THEN M$="*"::ELSE  M$=":"
  170 RANDOMIZE W: ON VAL(X$) GOTO 1010,1040,1070
  180 E$="="
  190 S$=STR$(S):IF S$(1)="." THEN PRINT  " 0";S$;"";M$;Z;E$;::ELSE PRINT  S;M$;Z;E$;
  200 INPUT R$:R=VAL(R$):R=FIX(R*10000)
  210 IF M$="*" THEN P=S*Z::ELSE P=S/Z
  211 P=FIX(P*10000)
  220 IF P=R THEN LOCATE I+I,24:PRINT"Jó!":JR=JR+1:SOUND 783.99,6::ELSE LOCATE I+I,24:PRINT"Nem jó!":SOUND 261.63,6
  224 PRINT
  225 PRINT;
  230 NEXT I
  240 PRINT:PRINT JR;" db. jó vålaszt adtål!"
  250 B$(F)=A$: B(F)=JR
  260 A$=INPUT $(1)
  270 IF S$="0" THEN GOTO 290
  280 CLS:GOTO 120
  290 CLS:PRINT"Nehézség:      Jó eredmény:"
  300 FOR  J=1 TO F
  310 PRINT:PRINT"    ";B$(J);"      ";B(J)
  320 NEXT J
  330 A$=INPUT $(1)
  340 GOTO 120
 1000 STOP
 1010 Z=10^INT(RND*4):IF Z=1 THEN GOTO 1010
 1020 RANDOMIZE W:IF M=1 THEN S=Z*FIX(RND*100)::ELSE S=FIX(RND*1000)
 1030 GOTO 180
 1040 Z=10^INT(RND*4):IF Z=1 THEN GOTO 1040
 1050 RANDOMIZE W:S=INT(RND*1000)/10^INT(RND*4)
 1051 IF LEN(STR$(S))>5 THEN GOTO 1020
 1060 GOTO 180
 1070 Z=10^INT(RND*5):IF Z=1 THEN GOTO 1070
 1080 RANDOMIZE W:S=INT(RND*1000)/10^INT(RND*5)
 1081 IF LEN(STR$(S))>5 THEN GOTO 1020
 1090 GOTO 180
