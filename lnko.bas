   10 CLS
   20 SCREEN 1
   30 LOCATE 10,5:PRINT"Primtényezös felbontås"
   35 F=0:R=0
   40 X$=INPUT $(1)
   50 GOSUB 9000
   60 A=VAL(RIGHT$(TIME$,2))
   70 RANDOMIZE A
   75 FOR I=1 TO 5
   76 SZ=1
   80 Y=INT(RND*6)
   90 IF Y=0 THEN A(I)=2
  100 IF Y=1 THEN A(I)=3
  110 IF Y=2 THEN A(I)=5
  120 IF Y=3 THEN A(I)=7
  130 IF Y=4 THEN A(I)=11
  140 IF Y=5 THEN A(I)=13
  150 NEXT I
  160 FOR I=1 TO 5
  170 SZ=SZ*A(I)
  175 IF SZ>2000 THEN GOTO 75
  180 NEXT I
  190 CLS
  200 LOCATE 5,5:PRINTSZ
  210 LINE (90,30)-(90,90)
  220 LOCATE 21,1:PRINT"                                  ";
  221 F=F+1:GOSUB 8010:LOCATE 21,1:PRINT"Mennyi az elsö primtényezö";
  230 INPUT T:IF T=0 THEN R=R+1:GOTO 220
  235 IF T<>A(1) AND T<>A(2) AND T<>A(3) AND T<>A(4) AND T<>A(5) THEN R=R+1:GOTO 220
  240 IF SZ/T-INT(SZ/T)<.0001 THEN LOCATE 5,13:PRINT T:GOTO 245
  244 R=R+1:PRINT"Nem jò!":GOTO 220
  245 LOCATE 21,1:PRINT"                                                                               "
  250 LOCATE 21,1:PRINT"                                     "
  251 F=F+1:GOSUB 8010:LOCATE 21,1:PRINT"Hånyszor van meg benne";
  260 INPUT H:IF H=0 THEN R=R+1:GOTO 250
  270 IF H=SZ/T THEN LOCATE 6,5:PRINT H:GOTO 276
  275 IF H=<>SZ/T THEN  PRINT"nem jò";:R=R+1:GOTO 250
  276 LOCATE 21,1:PRINT"                                                                                                                        "
  280 LOCATE 21,1:PRINT"                                   ";
  281 F=F+1:GOSUB 8010:LOCATE 21,1:PRINT"Mennyi a måsodik primtényezö";
  290 INPUT T:IF T=0 THEN R=R+1:GOTO 280
  300 IF T<>A(1) AND T<>A(2) AND T<>A(3) AND T<>A(4) AND T<>A(5) THEN R=R+1:GOTO 280
  310 IF H/T-INT(H/T)<.0001 THEN LOCATE 6,13:PRINT T:GOTO 345
  344 R=R+1:PRINT"Nem jò!":GOTO 280
  345 LOCATE 21,1:PRINT"                                                                               "
  350 LOCATE 21,1:PRINT"                                     "
  351 F=F+1:GOSUB 8010:LOCATE 21,1:PRINT"Hånyszor van meg benne";
  360 INPUT H1:IF H1=0 THEN R=R+1:GOTO 350
  370 IF H1=H/T THEN LOCATE 7,5:PRINT H1:GOTO 376
  375 IF H1=<>H/T THEN R=R+1:PRINT"nem jò";:GOTO 350
  376 LOCATE 21,1:PRINT"                                                                                                                        "
  380 LOCATE 21,1:PRINT"                                    ";
  381 F=F+1:GOSUB 8010:LOCATE 21,1:PRINT"Mennyi a harmadik primtényezö";
  390 INPUT T:IF T=0 THEN R=R+1:GOTO 380
  400 IF T<>A(1) AND T<>A(2) AND T<>A(3) AND T<>A(4) AND T<>A(5) THEN R=R+1:GOTO 380
  410 IF H1/T-INT(H1/T)<.0001 THEN LOCATE 7,13:PRINT T:GOTO 445
  444 PRINT"Nem jò!":GOTO 380
  445 LOCATE 21,1:PRINT"                                                                               "
  450 LOCATE 21,1:PRINT"                                     "
  451 F=F+1:GOSUB 8010:LOCATE 21,1:PRINT"Hånyszor van meg benne";
  460 INPUT H2:IF H2=0 THEN R=R+1:GOTO 450
  470 IF H2=H1/T THEN LOCATE 8,5:PRINT H2:GOTO 476
  475 IF H2=<>H1/T THEN R=R+1:PRINT"nem jò";:GOTO 450
  476 LOCATE 21,1:PRINT"                                                                                                                        "
  480 LOCATE 21,1:PRINT"                                    ";
  481 F=F+1:GOSUB 8010:LOCATE 21,1:PRINT"Mennyi a negyedik primtényezö";
  490 INPUT T:IF T=0 THEN R=R+1:GOTO 480
  500 IF T<>A(1) AND T<>A(2) AND T<>A(3) AND T<>A(4) AND T<>A(5) THEN R=R+1:GOTO 480
  510 IF H2/T-INT(H2/T)<.0001 THEN LOCATE 8,13:PRINT T:GOTO 545
  544 PRINT"Nem jò!":GOTO 480
  545 LOCATE 21,1:PRINT"                                                                               "
  550 LOCATE 21,1:PRINT"                                     "
  551 F=F+1:GOSUB 8010:LOCATE 21,1:PRINT"Hånyszor van meg benne";
  560 INPUT H3:IF H3=0 THEN R=R+1:GOTO 550
  570 IF H3=H2/T THEN LOCATE 9,5:PRINT H3:GOTO 576
  575 IF H3=<>H2/T THEN R=R+1:PRINT"nem jò";:GOTO 550
  576 LOCATE 21,1:PRINT"                                                                                                                        "
  580 LOCATE 21,1:PRINT"                                   ";
  581 F=F+1:GOSUB 8010:LOCATE 21,1:PRINT"Mennyi a ötödik primtényezö";
  590 INPUT T:IF T=0 THEN R=R+1:GOTO 580
  600 IF T<>A(1) AND T<>A(2) AND T<>A(3) AND T<>A(4) AND T<>A(5) THEN R=R+1:GOTO 580
  610 IF H3/T-INT(H3/T)<.0001 THEN LOCATE 9,13:PRINT T:GOTO 645
  644 PRINT"Nem jò!":GOTO 580
  645 LOCATE 21,1:PRINT"                                                                               "
  650 LOCATE 21,1:PRINT"                                     "
  651 F=F+1:GOSUB 8010:LOCATE 21,1:PRINT"Hånyszor van meg benne";
  660 INPUT H4:IF H4=0 THEN R=R+1:GOTO 650
  670 IF H4=H3/T THEN LOCATE 10,5:PRINT H4:GOTO 676
  675 IF H4=<>H3/T THEN R=R+1:PRINT"nem jò";:GOTO 650
  676 LOCATE 21,1:PRINT"                                                                                                                        "
  773 A=VAL(RIGHT$(TIME$,2))
  774 RANDOMIZE A
  775 FOR I=1 TO 5
  776 ZS=1
  780 Y=INT(RND*6)
  790 IF Y=0 THEN B(I)=2
  800 IF Y=1 THEN B(I)=3
  810 IF Y=2 THEN B(I)=5
  820 IF Y=3 THEN B(I)=7
  830 IF Y=4 THEN B(I)=11
  840 IF Y=5 THEN B(I)=13
  850 NEXT I
  860 FOR I=1 TO 5
  870 ZS=ZS*B(I)
  875 IF ZS>2000 THEN GOTO 775
  880 NEXT I
  900 LOCATE 5,18:PRINT ZS
  910 LINE (190,30)-(190,90)
  920 LOCATE 21,1:PRINT"                                  ";
  921 F=F+1:GOSUB 8010:LOCATE 21,1:PRINT"Mennyi az elsö primtényezö";
  930 INPUT T:IF T=0 THEN R=R+1:GOTO 920
  935 IF T<>B(1) AND T<>B(2) AND T<>B(3) AND T<>B(4) AND T<>B(5) THEN R=R+1:GOTO 920
  940 IF ZS/T-INT(ZS/T)<.0001 THEN LOCATE 5,25:PRINT T:GOTO 945
  944 R=R+1:PRINT"Nem jò!":GOTO 920
  945 LOCATE 21,1:PRINT"                                                                               "
  950 LOCATE 21,1:PRINT"                                     "
  951 F=F+1:GOSUB 8010:LOCATE 21,1:PRINT"Hånyszor van meg benne";
  960 INPUT H:IF H=0 THEN R=R+1:GOTO 950
  970 IF H=ZS/T THEN LOCATE 6,18:PRINT H:GOTO 976
  975 IF H=<>ZS/T THEN  PRINT"nem jò";:R=R+1:GOTO 950
  976 LOCATE 21,1:PRINT"                                                                                                                        "
  980 LOCATE 21,1:PRINT"                                   ";
  981 F=F+1:GOSUB 8010:LOCATE 21,1:PRINT"Mennyi a måsodik primtényezö";
  990 INPUT T:IF T=0 THEN R=R+1:GOTO 980
 1000 IF T<>B(1) AND T<>B(2) AND T<>B(3) AND T<>B(4) AND T<>B(5) THEN R=R+1:GOTO 980
 1010 IF H/T-INT(H/T)<.0001 THEN LOCATE 6,25:PRINT T:GOTO 1045
 1044 R=R+1:PRINT"Nem jò!":GOTO 980
 1045 LOCATE 21,1:PRINT"                                                                               "
 1050 LOCATE 21,1:PRINT"                                     "
 1051 F=F+1:GOSUB 8010:LOCATE 21,1:PRINT"Hånyszor van meg benne";
 1060 INPUT H1:IF H1=0 THEN R=R+1:GOTO 1050
 1070 IF H1=H/T THEN LOCATE 7,18:PRINT H1:GOTO 1076
 1075 IF H1=<>H/T THEN R=R+1:PRINT"nem jò";:GOTO 1050
 1076 LOCATE 21,1:PRINT"                                                                                                                        "
 1080 LOCATE 21,1:PRINT"                                    ";
 1081 F=F+1:GOSUB 8010:LOCATE 21,1:PRINT"Mennyi a harmadik primtényezö";
 1090 INPUT T:IF T=0 THEN R=R+1:GOTO 1080
 1100 IF T<>B(1) AND T<>B(2) AND T<>B(3) AND T<>B(4) AND T<>B(5) THEN R=R+1:GOTO 1080
 1110 IF H1/T-INT(H1/T)<.0001 THEN LOCATE 7,25:PRINT T:GOTO 1145
 1144 PRINT"Nem jò!":GOTO 1080
 1145 LOCATE 21,1:PRINT"                                                                               "
 1150 LOCATE 21,1:PRINT"                                     ";
 1151 F=F+1:GOSUB 8010:LOCATE 21,1:PRINT"Hånyszor van meg benne";
 1160 INPUT H2:IF H2=0 THEN R=R+1:GOTO 1150
 1170 IF H2=H1/T THEN LOCATE 8,18:PRINT H2:GOTO 1176
 1175 IF H2=<>H1/T THEN R=R+1:PRINT"nem jò";:GOTO 1150
 1176 LOCATE 21,1:PRINT"                                                                                                                        "
 1180 LOCATE 21,1:PRINT"                                    ";
 1181 F=F+1:GOSUB 8010:LOCATE 21,1:PRINT"Mennyi a negyedik primtényezö";
 1190 INPUT T:IF T=0 THEN R=R+1:GOTO 1180
 1200 IF T<>B(1) AND T<>B(2) AND T<>B(3) AND T<>B(4) AND T<>B(5) THEN R=R+1:GOTO 1180
 1210 IF H2/T-INT(H2/T)<.0001 THEN LOCATE 8,25:PRINT T:GOTO 1245
 1244 PRINT"Nem jò!":GOTO 1180
 1245 LOCATE 21,1:PRINT"                                                                               "
 1250 LOCATE 21,1:PRINT"                                     "
 1251 F=F+1:GOSUB 8010:LOCATE 21,1:PRINT"Hånyszor van meg benne";
 1260 INPUT H3:IF H3=0 THEN R=R+1:GOTO 1250
 1270 IF H3=H2/T THEN LOCATE 9,18:PRINT H3:GOTO 1276
 1275 IF H3=<>H2/T THEN R=R+1:PRINT"nem jò";:GOTO 1250
 1276 LOCATE 21,1:PRINT"                                                                                                                        "
 1280 LOCATE 21,1:PRINT"                                   ";
 1281 F=F+1:GOSUB 8010:LOCATE 21,1:PRINT"Mennyi a ötödik primtényezö";
 1290 INPUT T:IF T=0 THEN R=R+1:GOTO 1280
 1300 IF T<>B(1) AND T<>B(2) AND T<>B(3) AND T<>B(4) AND T<>B(5) THEN R=R+1:GOTO 1280
 1310 IF H3/T-INT(H3/T)<.0001 THEN LOCATE 9,25:PRINT T:GOTO 1345
 1344 PRINT"Nem jò!":GOTO 1280
 1345 LOCATE 21,1:PRINT"                                                                               "
 1350 LOCATE 21,1:PRINT"                                     "
 1351 F=F+1:GOSUB 8010:LOCATE 21,1:PRINT"Hånyszor van meg benne";
 1360 INPUT H4:IF H4=0 THEN R=R+1:GOTO 1350
 1370 IF H4=H3/T THEN LOCATE 10,18:PRINT H4:GOTO 1376
 1375 IF H4=<>H3/T THEN R=R+1:PRINT"nem jò";:GOTO 1350
 1376 LOCATE 21,1:PRINT"                                                                                                                        "
 2000 REM lnko
 2005 LNK=1
 2010 FOR I=1 TO 5
 2020 FOR K=1 TO 5
 2030 IF A(I)=B(K) THEN LNK=LNK*A(I):A(I)=1:B(K)=1
 2040 NEXT K
 2050 NEXT I
 2060 LOCATE 21,1:PRINT"Mennyi az LNKO";
 2065 INPUT LN
 2070 IF LN=LNK THEN LOCATE 22,1:PRINT"Jò a megoldås!":GOTO 2085
 2080 PRINT"Nem jò!":GOTO 2060
 2085 X$=INPUT $(1)
 2090 REM lkkt
 2105 LKK=1
 2110 FOR I=1 TO 5
 2120 FOR K=1 TO 5
 2130 IF A(I)=B(K) THEN B(K)=1
 2140 NEXT K
 2150 NEXT I
 2151 FOR I=1 TO 5
 2152 LKK=LKK*A(I)
 2153 NEXT I
 2154 FOR K=1 TO 5
 2155 LKK=LKK*B(K)
 2156 NEXT K
 2157 LOCATE 21,1:PRINT"                                                                              ";
 2158 LKK=LKK*LN
 2160 LOCATE 21,1:PRINT"Mennyi az LKKT";
 2165 INPUT LK
 2170 IF LK=LKK THEN LOCATE 22,1:PRINT"Jò a megoldås!":GOTO 7997
 2180 LOCATE 22,1:PRINT"Nem jò!":GOTO 2160
 7997 X$=INPUT $(1):CLS:PRINT:PRINT"Akarsz uj feladatot?      (i/n)     ";
 7998 X$=INPUT $(1)
 7999 IF X$="i" THEN GOTO 75 :ELSE GOSUB 8010:PRINT:PRINT:PRINT:PRINT:PRINT"        SZIA"
 8000 GOTO 8000
 8010 LOCATE 4,30:PRINT"Kérdés:";F
 8020 LOCATE 5,30:PRINT"Hiba  :";R
 8030 RETURN
 8999 STOP
 9000 CLS
 9010 PRINT:PRINT"Ez a program a primtényezös felbontåst                                          gyakoroltatja."
 9020 PRINT:PRINT"Neked vagy a primtényezöt, vagy a ténye-                                        zövel osztott szåmot kell beírnod. Utå-                                         na nyomd meg az ENTER gombot."
 9030 PRINT:PRINT"Ha hibåzol a gép ujra kérdezi a szåmot!"
 9040 PRINT:PRINT"Vigyåzz a  gép   szåmolja,   hånyszor                                           tévedtél!"
 9070 PRINT:PRINT:PRINT"             Jò munkåt!"
 9080 X$=INPUT $(1)
 9090 RETURN
