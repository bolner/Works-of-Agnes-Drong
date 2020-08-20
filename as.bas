    5 W=VAL(MID$(TIME$,7,2))
    6 SCREEN 1
   10 REM alapmuveletek tizedes tortekkel
   15 CLS:KEY OFF
   20 LOCATE 10,15,:PRINT"ALAPMÜVELETEK"
   30 X$=INPUT $(1):CLS
   40 PRINT:PRINT:PRINT"Ez a program az alapmÜveleteket gyako-  roltatja."
   50 PRINT:PRINT"Neked csak az eredményt kell beírnod."
   60 PRINT: PRINT:PRINT"Utåna nyomd meg az ENTER gombot!"
   70 PRINT:PRINT:PRINT"A gép szåmolja hånyszor tévedtél, és ér-tékeli a munkådat!"
   80 PRINT:PRINT"Osztåsnål két tizedes pontossåggal szå- molj!"
   90 PRINT:PRINT"Tizedes vesszÖ helyett pontot hasznålj!"
  100 PRINT:PRINT"Ha kezdeni akarod nyomj meg egy tetszÖ- leges gombot!"
  110 X$=INPUT $(1)
  120 J=0:F=0
  130 CLS
  140 LOCATE 5,3,:PRINT "Håny feladatot kérsz":INPUT M
  150 IF M<5 THEN M=5
  160 IF M>20 THEN M=20
  170 CLS:RANDOMIZE W
  180 A=INT(RND*2)+1
  186 IF A=D THEN GOTO 180
  190 B=INT(RND*10000)+1
  200 C=INT(RND*100)+1
  210 R=INT(RND*4)+1
  220 ON R GOTO 300,400,500,600
  300 E=B/10^A+C
  310 LOCATE 5,3,:PRINT"Mennyi";B/10^A;"+";C;"=";
  320 INPUT V
  330 F=F+1
  340 IF V=E THEN GOTO 2000
  345 GOSUB 1000:GOTO 320
  400 E=B/10^A-C
  410 IF B/10^A-C<C THEN GOTO 170
  411 IF LEN(STR$(E))>5 THEN GOTO 190
  420 LOCATE 5,3,:PRINT"Mennyi";B/10^A;"-";C;"=";
  430 INPUT V
  440 F=F+1
  450 IF V=E THEN GOTO 2000
  455 GOSUB 1000:GOTO 430
  500 E=INT(B/10^A/C*100)/100
  501 IF LEN(STR$(E))>5 THEN GOTO 190
  510 LOCATE 5,3,:PRINT"Mennyi";B/10^A;":";C;"=";
  520 INPUT V
  530 F=F+1
  540 IF V=E THEN GOTO 2000
  545 GOSUB 1000:GOTO 520
  600 E=B/10^A*C
  601 IF LEN(STR$(E))>5 THEN GOTO 190
  610 LOCATE 5,3,:PRINT"Mennyi";B/10^A;"*";C;"=";
  620 INPUT V
  630 F=F+1
  640 IF V=E THEN GOTO 2000
  645 GOSUB 1000:GOTO 620
 1000 FOR I=1 TO 8
 1010 SOUND 783.99,6:SOUND 659.26,6
 1020 NEXT I
 1030 PRINT:PRINT"A megoldås hibås!"
 1040 IF F=M THEN GOTO 2500::ELSE RETURN
 1500 RETURN
 2000 FOR I=261 TO 1200 STEP 100
 2010 SOUND I,2
 2020 NEXT I
 2030 PRINT:PRINT"A megoldås jó!":X$=INPUT $(1)
 2040 J=J+1
 2050 IF F=M THEN GOTO 2500::ELSE GOTO 170
 2500 CLS
 2510 PRINT:PRINT:PRINT F;" feladatból ";J;" feladatot oldottål meg helyesen."
 2520 K=INT(J*5/F)
 2530 IF K=0 THEN K=1
 2540 PRINT:PRINT"Osztålyzatod:"K
 2550 END
