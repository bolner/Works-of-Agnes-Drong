   10 CLS
   20 SCREEN 1:KEY OFF
   25 F=0:H=0:S=0
   30 LOCATE 11,5:PRINT"Pitagorasz tétel alkalmazåsa"
   40 X$=INPUT $(1):CLS
   50 PRINT:PRINT"Ez a program a Pitagorasz tétel alkalma-zåsåt gyakoroltatja."
   60 PRINT:PRINT"Neked a kérdezett oldalt kell beírnod."
   70 PRINT:PRINT"Ha nem tudod, hogy kell kiszåmolni, kér-hetsz segítséget. Vigyåzz a gép szåmoljahånyszor  segített és azt is, hånyszor  hibåztål."
   75 PRINT:PRINT"Tizedes  vesszÖ  helyett tizedes pontot hasznålj!"
   80 PRINT:PRINT:PRINT"     Jò munkåt!"
   90 X$=INPUT $(1):CLS
  100 A=VAL(RIGHT$(TIME$,2))
  110 RANDOMIZE A
  120 CLS:F=F+1
  121 SZ=INT(RND*200)
  122 LOCATE 1,25:PRINT"feladat :";F
  123 LOCATE 2,25:PRINT"hiba    :";H
  124 LOCATE 3,25:PRINT"segítség:";S
  125 IF SZ=0 THEN GOTO 121
  130 A=.3*SZ:B=.4*SZ:C=.5*SZ
  140 IF LEN(STR$(A))>5 OR LEN(STR$(B))>5 OR LEN(STR$(C))>5 THEN GOTO 121
  150 LINE (20,50)-(20,20)
  160 LINE (20,50)-(80,50)
  170 LINE (80,50)-(20,20)
  180 LOCATE 5,2:PRINT"a"
  190 LOCATE 8,7:PRINT"b"
  200 LOCATE 4,8:PRINT"c"
  210 R=INT(RND*3)
  220 IF R=0 THEN GOTO 500
  230 IF R=1 THEN GOTO 800
  240 LOCATE 10,1:PRINT"a=";A;"cm"
  250 LOCATE 11,1:PRINT"b=";B;"cm"
  259 LOCATE 13,1:PRINT"                     "
  260 LOCATE 13,1:PRINT"Mennyi a c oldal";:INPUT CV
  270 IF C<>CV THEN GOSUB 2000:GOTO 259
  280 GOSUB 3000:GOTO 120
  500 LOCATE 10,1:PRINT"a=";A;"cm"
  510 LOCATE 11,1:PRINT"c=";C;"cm"
  529 LOCATE 13,1:PRINT"                     "
  530 LOCATE 13,1:PRINT"Mennyi a b oldal";:INPUT BV
  540 IF B<>BV THEN GOSUB 2300:GOTO 529
  550 GOSUB 3000:GOTO 120
  800 LOCATE 10,1:PRINT"b=";B;"cm"
  810 LOCATE 11,1:PRINT"c=";C;"cm"
  829 LOCATE 13,1:PRINT"                     "
  830 LOCATE 13,1:PRINT"Mennyi az a oldal";:INPUT AV
  840 IF A<>AV THEN GOSUB 2500:GOTO 829
  850 GOSUB 3000:GOTO 120
 1999 STOP
 2000 LOCATE 22,1:PRINT"A megoldås rossz!"
 2010 X$=INPUT $(1)
 2020 LOCATE 22,1:PRINT"                           "
 2030 LOCATE 22,1:PRINT"Kérsz segítséget (i/n) ";:X$=INPUT $(1)
 2031 LOCATE 22,1:PRINT"                              ";
 2038 IF X$="i" THEN LOCATE 21,1:PRINT"c=√a²+b²";
 2040 IF X$="i" THEN  LOCATE 20,4:PRINT"_____                   ";:S=S+1
 2100 F=F+1:LOCATE 1,25:PRINT"feladat :";F
 2110 H=H+1:LOCATE 2,25:PRINT"hiba    :";H
 2130 LOCATE 3,25:PRINT"segítség:";S
 2140 FOR I=1 TO 8
 2150 SOUND 2100,2
 2160 SOUND 1900,2
 2170 NEXT I
 2180 RETURN
 2300 LOCATE 22,1:PRINT"A megoldås rossz!"
 2310 X$=INPUT $(1)
 2320 LOCATE 22,1:PRINT"                           "
 2330 LOCATE 22,1:PRINT"Kérsz segítséget (i/n) ";:X$=INPUT $(1)
 2331 LOCATE 22,1:PRINT"                              ";
 2338 IF X$="i" THEN LOCATE 21,1:PRINT"b=√c²-a²";
 2340 IF X$="i" THEN  LOCATE 20,4:PRINT"_____                   ";:S=S+1
 2400 F=F+1:LOCATE 1,25:PRINT"feladat :";F
 2410 H=H+1:LOCATE 2,25:PRINT"hiba    :";H
 2430 LOCATE 3,25:PRINT"segítség:";S
 2440 FOR I=1 TO 8
 2450 SOUND 2100,2
 2460 SOUND 1900,2
 2470 NEXT I
 2480 RETURN
 2499 STOP
 2500 LOCATE 22,1:PRINT"A megoldås rossz!"
 2510 X$=INPUT $(1)
 2520 LOCATE 22,1:PRINT"                           "
 2530 LOCATE 22,1:PRINT"Kérsz segítséget (i/n) ";:X$=INPUT $(1)
 2531 LOCATE 22,1:PRINT"                              ";
 2538 IF X$="i" THEN LOCATE 21,1:PRINT"a=√c²-b²";
 2540 IF X$="i" THEN  LOCATE 20,4:PRINT"_____                   ";:S=S+1
 2600 F=F+1:LOCATE 1,25:PRINT"feladat :";F
 2610 H=H+1:LOCATE 2,25:PRINT"hiba    :";H
 2630 LOCATE 3,25:PRINT"segítség:";S
 2640 FOR I=1 TO 8
 2650 SOUND 2100,2
 2660 SOUND 1900,2
 2670 NEXT I
 2680 RETURN
 2999 STOP
 3000 LOCATE 22,1:PRINT"A megoldås jò!"
 3010 LOCATE 1,25:PRINT"feladat :";F
 3020 LOCATE 2,25:PRINT"hiba    :";H
 3030 LOCATE 3,25:PRINT"segítség:";S
 3040 FOR I=1300 TO 3000 STEP 50
 3050 SOUND I,1
 3060 NEXT I
 3070 RETURN
