    5 KEY OFF
   10 CLS
   11 S=0
   15 GOSUB 600
   17 GOSUB 1000
   18 LOCATE 4,1:PRINT "                                       "
   20 LINE (104,100)-(304,100)
   30 LINE (204,20)-(204,180)
   40 LINE (304,100)-(299,95)
   50 LINE (304,100)-(299,105)
   60 LINE (204,20)-(209,25)
   70 LINE (204,20)-(199,25)
   80 FOR I=108 TO 300 STEP 8
   90 LINE (I,98)-(I,102)
  100 NEXT I
  110 FOR I=28 TO 172 STEP 8
  120 LINE (202,I)-(206,I)
  130 NEXT I
  132 FOR I=20 TO 181 STEP 8
  133 FOR J=108 TO 305 STEP 8
  134 PSET (J,I)
  135 NEXT J
  136 NEXT I
  140 LOCATE 14,31,:PRINT"5"
  150 LOCATE 14,20,:PRINT"-5"
  160 LOCATE 14,39,:PRINT"x"
  170 LOCATE 8,25,:PRINT"5"
  180 LOCATE 18,24,:PRINT"-5"
  190 LOCATE 2,25,:PRINT"y"
  199 A=0
  240 FOR T=124 TO 284
  250 X=(T-4)/8-25
  260 GOSUB 1500
  265 IF Y<-10 OR Y>10 THEN GOTO 290
  270 H=100-Y*8
  280 LINE -(T,H),A
  281 A=1
  285 FOR O=1 TO 50:NEXT O
  290 NEXT T
  300 LOCATE 22,1 :FOR I=1 TO 3000:NEXT I
  330 LIST 1500
  600 LOCATE 8,15:PRINT"FÜGGVÉNYEK"
  610 A$=INPUT $(1)
  620 CLS
  625 PRINT:PRINT:PRINT:PRINT"Ez a program a fÜggvények åbråzolåsåt                                           mutatja be. ElsÖként az  y=x   fv.-t                                            åbråzolja. Az 1500-as sor megvåltoztatå-"
  626 PRINT:PRINT"såval mås fÜggvényt is åbråzolhatsz. Az                                         F2 billentyÜ lenyomåsåval újra indítha-"
  627 PRINT:PRINT"tod a program futåsåt. "
  628 PRINT:PRINT"Egy billentyÜ lenyomåsåra indul  a prog-                                        ram."
  629 PRINT:PRINT:PRINT"        Jó MUNKÅT!"
  630 A$=INPUT$(1)
  640 RETURN
 1000 CLS
 1010 PRINT:PRINT"  Akarsz  fÜggvényértékeket  szåmolni?                                                              (y/n) ";
 1020 A$=INPUT $(1)
 1021 LOCATE 4,1:PRINT"                                       "
 1025 LOCATE 2,1:PRINT"                                                                                "
 1030 IF A$="n" THEN LOCATE 1,1:PRINT"                                                                               ":RETURN
 1040 IF A$="y" THEN GOTO 1060
 1050 GOTO 1020
 1060 LINE (16,160)-(140,160)
 1065 FOR I=16 TO 136 STEP 24
 1070 LINE (I,150)-(I,170)
 1080 NEXT I
 1090 LOCATE 20,1:PRINT"x":LOCATE 21,1:PRINT"y"
 1100 LOCATE 1,1:PRINT"                                                                                                                             "
 1109 FOR K=3 TO 17 STEP 3
 1110 LOCATE 19,1:PRINT"                                       ":LOCATE 18,1:PRINT"Mennyi legyen az x értéke ";:INPUT X
 1120 IF X<-10  THEN PRINT" nagyobbat kérek!" :FOR Q=1 TO 9000:NEXT Q:GOTO 1110
 1125 IF X>10 THEN PRINT" kisebbet kérek!":FOR Q=1 TO 9000:NEXT Q:GOTO 1110
 1126 LOCATE 20,K:PRINT X
 1130 GOSUB 1500
 1132 IF Y<>INT(Y) THEN LOCATE 19,1: PRINT"y nem egész szåm!":FOR D=1 TO 250:NEXT D :GOTO 1110
 1135 LOCATE 18,1:PRINT"                                                                                "
 1140 LOCATE 18,1:PRINT"Mennyi az y értéke ";: INPUT B
 1150 IF B<>Y THEN LOCATE 18,25: PRINT"ROSSZ":S=S+1: GOTO 1140
 1160 LOCATE 21,K:PRINT B :LOCATE 18,25:PRINT"      "
 1170 NEXT K
 1175 LOCATE 18,1:PRINT"                                       "
 1176 LOCATE 19,2:PRINT S;"hiba"
 1177 LOCATE 22,1:PRINT"Åbråzoljam? (y/n)";:C$=INPUT $(1)
 1178 IF C$="y"THEN RETURN :ELSE GOTO 1177
 1500 Y=X
 1510 RETURN
