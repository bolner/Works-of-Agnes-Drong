    5 CLS
    6 SCREEN 1
   10 W=VAL (MID$(TIME$,7,2))
   20 REM mertekvaltasok
   30 CLS:KEY OFF
   40 LOCATE 10,25,:PRINT"     MÉRTÉKEGYSÉGEK ÅTVÅLTÅSA"
   50 X$=INPUT $(1):CLS
   60 DIM B(500):DIM M$(30):DIM V(10)
   70 PRINT:PRINT:PRINT:PRINT"A kÖvetkezÖ program az eddig tanult mér-tékegységek kÖzÖtti åtvåltåst gyakorol- tatja."
   80 PRINT:PRINT:PRINT"Neked csak az eredményt kell a billen-  tyÜzet segitségével beírnod."
   90 PRINT:PRINT:PRINT"Tizedes vesszÖ helyett tizedes pontot   hasznålj!"
  100 PRINT:PRINT:PRINT"Lapozåshoz tetszÖleges billentyÜt kell  lenyomnod."
  110 PRINT:PRINT:PRINT"          Jó MUNKÅT!"
  120 X$=INPUT $(1)
  130 CLS:F=F+1:JE=0
  140 FOR K=1 TO 19 STEP 2
  150 RANDOMIZE W:ME=INT(RND*3):ME=ME+1
  160 ON ME GOTO 1000,1020,1040
  170 RANDOMIZE W:M=INT(RND*4):N=INT(RND*4):IF M=N THEN GOTO 170
  180 RANDOMIZE W:S=INT(RND*1000)/10^INT(RND*3)
  181 IF LEN(STR$(S))>6 THEN GOTO 180
  190 E$="="
  200 S$=STR$(S):IF S$(1)="." THEN LOCATE K,0,:PRINT" 0";S$;:LOCATE  K+1,7,:PRINT M$(M):LOCATE K+1,10,:PRINT E$:LOCATE K+1,24,:PRINT M$(N);::ELSE LOCATE K,0,:PRINT S:LOCATE K+1,7,:PRINT M$(M):LOCATE K+1,10,:PRINT E$:LOCATE K+1,24,:PRINT M$(N);
  210 LOCATE K+1,12,
  220 INPUT Z
  230 VS=1:IF N>M THEN GOTO 240::ELSE GOTO  260
  240 FOR J=M TO N-1:VS=VS*V(J):NEXT J
  250 GOTO 270
  260 FOR J=N TO M-1:VS=VS/V(J):NEXT J
  270 E=FIX(S*VS*10000):Z=FIX(Z*10000)
  280 IF E=Z THEN LOCATE K+1,32,:PRINT"Jó!":SOUND 783.99,6:JE=JE+1::ELSE LOCATE K+1,32,:PRINT"Nem jó!":SOUND 293.66,6
  290 NEXT K
  300 PRINT:PRINT JE;" db. jó vålaszt adtål!"
  310 B(F)=JE
  320 A$=INPUT $(1)
  330 IF A$="0" THEN GOTO 400
  340 GOTO 130
  400 CLS:PRINT"Jó eredmények:"
  410 FOR J=1 TO F
  420 PRINT:PRINT"    ";B(J)
  430 NEXT J
  440 A$=INPUT $(1)
  450 GOTO 130
 1000 M$(0)="km":M$(1)="m":M$(2)="dm":M$(3)="cm"
 1010 V(0)=1000:V(1)=10:V(2)=10
 1015 GOTO 170
 1020 M$(0)="hl":M$(1)="l":M$(2)="dl":M$(3)="cl"
 1030 V(0)=100:V(1)=10:V(2)=10
 1035 GOTO 170
 1040 M$(0)="t":M$(1)="kg":M$(2)="dkg":M$(3)="g"
 1050 V(0)=1000:V(1)=100:V(2)=10
 1060 GOTO 170
