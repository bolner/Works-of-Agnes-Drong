    5 CLS
   10 W=VAL(MID$(TIME$,7,2))
   20 RANDOMIZE W
   30 KEY OFF:CLS
   40 LOCATE 10,1,:PRINT"              SZÅZALÉK                                    SZÅMíTÅS"
   50 X$=INPUT $(1)
   60 CLS
   70 PRINT:PRINT:PRINT:PRINT:PRINT"Ez a program a szåzalékszåmítåst gyako- roltatja. Az eredményeket két tizedes-  jegy pontossåggal fogadja el."
   80 PRINT:PRINT"10 feladat megoldåsa utån értékeli a    munkådat!"
   90 PRINT:PRINT:PRINT"  Az eredmény beíråsa utån nyomd meg az   ENTER gombot!"
  100 PRINT:PRINT:PRINT"Ha kezdeni akarod nyomj meg egy tetszÖ- leges gombot!"
  110 X$=INPUT $(1):CLS
  120 X=0:H=0
  130 I=I+1
  140 CLS:IF I<11 THEN PRINT "    ";I;" . feladat":PRINT
  150 M=INT(RND*3)
  160 P=INT(RND*3)
  170 N=INT(RND*3):IF I=11 THEN GOTO 570
  180 IF N=0 THEN F$="alap"
  190 IF M=0 THEN O$="alap"
  200 IF N=1 THEN F$="szåzaléklåb"
  210 IF M=1 THEN O$="szåzaléklåb"
  220 IF N=2 THEN F$="szåzalékérték"
  230 IF M=2 THEN O$="szåzalékérték"
  240 IF F$=O$ THEN GOTO 150
  250 IF P=1 THEN R$="szåzaléklåb"
  260 IF P=2 THEN R$="szåzalékérték"
  270 IF P=0 THEN R$="alap"
  280 IF R$=F$ THEN GOTO 160
  290 IF R$=O$ THEN GOTO 160
  300 K=INT(RND*3000)/10^N
  301 IF LEN(STR$(K))>6 THEN GOTO 300
  310 L=INT(RND*800)/10^M
  311 IF LEN(STR$(L))>6 THEN GOTO 310
  315 K=INT(K*100)/100:L=INT(L*100)/100
  320 PRINT F$;"=";K
  330 PRINTO$;"=";L
  340 PRINT:IF R$="alap"THEN PRINT"Mennyi az ";R$:GOTO 350
  345 PRINT:PRINT"Mennyi a ";R$
  350 IF F$="szåzaléklåb" AND O$="alap" THEN G=L/100*K
  360 IF F$="szåzaléklåb" AND O$="szåzalékérték" THEN  G=L*100/K
  370 IF F$="alap" AND O$="szåzalékérték"THEN  G=L*100/K
  380 IF F$="alap" AND O$="szåzaléklåb" THEN  G=K/100*L
  390 IF F$="szåzalékérték"AND O$="szåzaléklåb" THEN  G=K*100/L
  400 IF F$="szåzalékérték" AND O$="alap" THEN  G=K*100/L
  410 G=INT(G*100)/100
  420 INPUT B
  430 PRINT
  440 IF B<>G THEN  GOTO 500
  450 IF B=G THEN PRINT"Jó a megoldås!":PRINT:X=X+1
  460 FOR N= 261 TO 1200 STEP 100
  470 SOUND N,2
  480 NEXT N
  490 GOTO 130
  500 FOR N=1 TO 8
  510 SOUND 783.99,6:SOUND 659.26,6
  520 NEXT N
  530 I=I+1:H=H+1:PRINT"A megoldas HIBÅS!":PRINT H;" . hiba";
  540 IF I<11 THEN PRINT "    ";I;" . feladat":PRINT
  550 IF I=11 THEN GOTO 570
  560 GOTO 340
  570 PRINT:PRINT:PRINT:PRINT"10 feladatból ";X;" feladatot oldottål meg helyesen,              osztålyzatod: ";
  580 IF X>8 THEN O=5
  590 IF X=8 THEN O=4
  600 IF X=7 THEN O=3
  610 IF X=6 THEN  O=2
  620 IF X<6 THEN O=1
  630 PRINT;O
