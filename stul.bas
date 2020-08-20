   10 CLS
   20 SCREEN 1:KEY OFF:H=0
   30 LOCATE 12,8:PRINT"SokszÖgek tulajdonsågai"
   40 X$=INPUT $(1):CLS
   45 PRINT:PRINT:PRINT
   50 PRINT:PRINT"Ez a program a  sokszÖgek tulajdonsågaitkérdezi ki TÖled."
   60 PRINT:PRINT"Neked csak igennel (i) vagy nemmel (n)  kell vålaszolnod."
   80 PRINT:PRINT"Ha kezdeni akarod, nyomj meg egy billen-tyÜt!"
   90 PRINT:PRINT:PRINT:PRINT"           Jó munkåt!"
   99 X$=INPUT $(1):CLS
  100 A=VAL(RIGHT$(TIME$,2))
  110 RANDOMIZE A
  120 CLS:A=INT(RND*20)
  125 K=INT(RND*25)
  130 ON A GOTO 200,300,400,500,600,700,800,900,1000,1100,1200,1300,1400,1500,1600,1700,1800,1900,2000
  200 LINE (20,20)-(50,50)
  205 LINE (50,50)-(150,50)
  210 LINE (20,20)-(150,50)
  215 LOCATE 8,10:PRINT"a"
  220 LOCATE 4,11:PRINT"b"
  225 LOCATE 5,3:PRINT"c"
  249 GOSUB 2500
  250 LOCATE 20,1:PRINT"                                      ":LOCATE 20,1 :PRINT"Mi a neve (sorszåm) ";:INPUT A$
  255 IF A$="1" THEN PRINT"Jò":GOSUB 2700:GOTO 260
  256 H=H+1:LOCATE 1,10:PRINT"HIBA:";H:LOCATE 21,1:PRINT"          ":GOTO 250
  260 LOCATE 20,1:PRINT"                                                                                                                      "
  270 GOSUB 3000
  275 INPUT X$
  280 IF K=10 OR K=12 OR K=13 OR K=19 OR K=22 OR K=23 THEN Y$="i" :ELSE Y$="n"
  285 IF Y$=X$ THEN LOCATE 21,1:PRINT"Jó!"
  286 IF Y$=X$ THEN B$=INPUT $(1):GOTO 120
  287 H=H+1:LOCATE 1,10:PRINT"HIBA:";H
  299 LOCATE 20,1:PRINT"                                      ":GOTO 270
  300 LINE (50,50)-(100,50)
  305 LINE (60,10)-(100,50)
  310 LINE (60,10)-(50,50)
  315 LOCATE 8,10:PRINT"a"
  320 LOCATE 4,12:PRINT"b"
  325 LOCATE 5,5:PRINT"c"
  349 GOSUB 2500
  350 LOCATE 20,1:PRINT"                                      ":LOCATE 20,1 :PRINT"Mi a neve (sorszåm) ";:INPUT A$
  355 IF A$="2" THEN PRINT"Jò":GOSUB 2700:GOTO 360
  356 H=H+1:LOCATE 1,10:PRINT"HIBA:";H:LOCATE 21,1:PRINT"          ":GOTO 350
  360 LOCATE 20,1:PRINT"                                                                                                                      "
  370 GOSUB 3000
  375 INPUT X$
  380 IF K=10 OR K=12 OR K=13 OR K=19 OR K=22 OR K=23 OR K=24 THEN Y$="i" :ELSE Y$="n"
  385 IF Y$=X$ THEN LOCATE 21,1:PRINT"Jó!"
  386 IF Y$=X$ THEN B$=INPUT $(1):GOTO 120
  387 H=H+1:LOCATE 1,10:PRINT"HIBA:";H
  399 LOCATE 20,1:PRINT"                                      ":GOTO 370
  400 LINE (30,50)-(100,50)
  405 LINE (30,50)-(30,10)
  410 LINE (30,10)-(100,50)
  415 LOCATE 8,8:PRINT"a"
  420 LOCATE 4,10:PRINT"b"
  425 LOCATE 4,3:PRINT"c"
  449 GOSUB 2500
  450 LOCATE 20,1:PRINT"                                      ":LOCATE 20,1 :PRINT"Mi a neve (sorszåm) ";:INPUT A$
  455 IF A$="3" THEN PRINT"Jò":GOSUB 2700:GOTO 460
  456 H=H+1:LOCATE 1,10:PRINT"HIBA:";H:LOCATE 21,1:PRINT"          ":GOTO 450
  460 LOCATE 20,1:PRINT"                                                                                                                      "
  470 GOSUB 3000
  475 INPUT X$
  480 IF K=10 OR K=12 OR K=13 OR K=19 OR K=22 OR K=23 THEN Y$="i" :ELSE Y$="n"
  485 IF Y$=X$ THEN LOCATE 21,1:PRINT"Jó!"
  486 IF Y$=X$ THEN B$=INPUT $(1):GOTO 120
  487 H=H+1:LOCATE 1,10:PRINT"HIBA:";H
  499 LOCATE 20,1:PRINT"                                      ":GOTO 470
  500 LINE (30,60)-(80,60)
  505 LINE (30,60)-(55,10)
  510 LINE (55,10)-(80,60)
  515 LOCATE 9,7:PRINT"a"
  520 LOCATE 4,10:PRINT"b"
  525 LOCATE 4,5:PRINT"c"
  549 GOSUB 2500
  550 LOCATE 20,1:PRINT"                                      ":LOCATE 20,1 :PRINT"Mi a neve (sorszåm) ";:INPUT A$
  555 IF A$="4" THEN PRINT"Jò":GOSUB 2700:GOTO 560
  556 H=H+1:LOCATE 1,10:PRINT"HIBA:";H:LOCATE 21,1:PRINT"          ":GOTO 550
  560 LOCATE 20,1:PRINT"                                                                                                                      "
  570 GOSUB 3000
  575 INPUT X$
  580 IF K=23 OR K=22 OR K=13 OR K=20 OR K=6 OR K=2 OR K=24 THEN Y$="i" :ELSE Y$="n"
  585 IF Y$=X$ THEN LOCATE 21,1:PRINT"Jó!"
  586 IF Y$=X$ THEN B$=INPUT $(1):GOTO 120
  587 H=H+1:LOCATE 1,10:PRINT"HIBA:";H
  599 LOCATE 20,1:PRINT"                                      ":GOTO 570
  600 LINE (50,50)-(110,50)
  605 LINE (50,50)-(15,15)
  610 LINE (15,15)-(110,50)
  615 LOCATE 8,9:PRINT"a"
  620 LOCATE 4,10:PRINT"b"
  625 LOCATE 4,3:PRINT"c"
  649 GOSUB 2500
  650 LOCATE 20,1:PRINT"                                      ":LOCATE 20,1 :PRINT"Mi a neve (sorszåm) ";:INPUT A$
  655 IF A$="5" THEN PRINT"Jò":GOSUB 2700:GOTO 660
  656 H=H+1:LOCATE 1,10:PRINT"HIBA:";H:LOCATE 21,1:PRINT"          ":GOTO 650
  660 LOCATE 20,1:PRINT"                                                                                                                      "
  670 GOSUB 3000
  675 INPUT X$
  680 IF K=2 OR K=6 OR K=13 OR K=20 OR K=22 OR K=23 THEN Y$="i" :ELSE Y$="n"
  685 IF Y$=X$ THEN LOCATE 21,1:PRINT"Jó!"
  686 IF Y$=X$ THEN B$=INPUT $(1):GOTO 120
  687 H=H+1:LOCATE 1,10:PRINT"HIBA:";H
  699 LOCATE 20,1:PRINT"                                      ":GOTO 670
  700 LINE (30,50)-(80,50)
  705 LINE (30,50)-(30,10)
  710 LINE (30,10)-(80,50)
  715 LOCATE 8,8:PRINT"a"
  720 LOCATE 4,10:PRINT"b"
  725 LOCATE 4,3:PRINT"c"
  749 GOSUB 2500
  750 LOCATE 20,1:PRINT"                                      ":LOCATE 20,1 :PRINT"Mi a neve (sorszåm) ";:INPUT A$
  755 IF A$="6" THEN PRINT"Jò":GOSUB 2700:GOTO 760
  756 H=H+1:LOCATE 1,10:PRINT"HIBA:";H:LOCATE 21,1:PRINT"          ":GOTO 750
  760 LOCATE 20,1:PRINT"                                                                                                                      "
  770 GOSUB 3000
  775 INPUT X$
  780 IF K=2 OR K=6 OR K=13 OR K=20 OR K=22 OR K=23 THEN Y$="i" :ELSE Y$="n"
  785 IF Y$=X$ THEN LOCATE 21,1:PRINT"Jó!"
  786 IF Y$=X$ THEN B$=INPUT $(1):GOTO 120
  787 H=H+1:LOCATE 1,10:PRINT"HIBA:";H
  799 LOCATE 20,1:PRINT"                                      ":GOTO 770
  800 LINE (30,50)-(80,50)
  805 LINE (30,50)-(55,10)
  810 LINE (55,10)-(80,50)
  815 LOCATE 8,8:PRINT"a"
  820 LOCATE 4,10:PRINT"b"
  825 LOCATE 4,5:PRINT"c"
  849 GOSUB 2500
  850 LOCATE 20,1:PRINT"                                      ":LOCATE 20,1 :PRINT"Mi a neve (sorszåm) ";:INPUT A$
  855 IF A$="7" THEN PRINT"Jò":GOSUB 2700:GOTO 860
  856 H=H+1:LOCATE 1,10:PRINT"HIBA:";H:LOCATE 21,1:PRINT"          ":GOTO 850
  860 LOCATE 20,1:PRINT"                                                                                                                      "
  870 GOSUB 3000
  875 INPUT X$
  880 IF K=1 OR K=3 OR K=13 OR K=7 OR K=22 OR K=23 OR K=9 OR K=24 THEN Y$="i" :ELSE Y$="n"
  885 IF Y$=X$ THEN LOCATE 21,1:PRINT"Jó!"
  886 IF Y$=X$ THEN B$=INPUT $(1):GOTO 120
  887 H=H+1:LOCATE 1,10:PRINT"HIBA:";H
  899 LOCATE 20,1:PRINT"                                      ":GOTO 870
  900 LINE (30,50)-(80,50)
  905 LINE (30,50)-(55,10)
  910 LINE (55,10)-(70,20)
  912 LINE (70,20)-(80,50)
  915 LOCATE 8,8:PRINT"a"
  920 LOCATE 4,11:PRINT"b"
  925 LOCATE 2,9:PRINT"c"
  926 LOCATE 4,5:PRINT"d"
  949 GOSUB 2500
  950 LOCATE 20,1:PRINT"                                      ":LOCATE 20,1 :PRINT"Mi a neve (sorszåm) ";:INPUT A$
  955 IF A$="8" THEN PRINT"Jò":GOSUB 2700:GOTO 960
  956 H=H+1:LOCATE 1,10:PRINT"HIBA:";H:LOCATE 21,1:PRINT"          ":GOTO 950
  960 LOCATE 20,1:PRINT"                                                                                                                      "
  970 GOSUB 3000
  975 INPUT X$
  980 IF K=10 OR K=12 OR K=14 OR K=19 OR K=22 OR K=23 THEN Y$="i" :ELSE Y$="n"
  985 IF Y$=X$ THEN LOCATE 21,1:PRINT"Jó!"
  986 IF Y$=X$ THEN B$=INPUT $(1):GOTO 120
  987 H=H+1:LOCATE 1,10:PRINT"HIBA:";H
  999 LOCATE 20,1:PRINT"                                      ":GOTO 970
 1000 LINE (10,50)-(80,50)
 1005 LINE (10,50)-(50,10)
 1010 LINE (50,10)-(70,10)
 1012 LINE (70,10)-(80,50)
 1015 LOCATE 8,8:PRINT"a"
 1020 LOCATE 4,11:PRINT"b"
 1025 LOCATE 1,8:PRINT"c"
 1026 LOCATE 4,3:PRINT"d"
 1049 GOSUB 2500
 1050 LOCATE 20,1:PRINT"                                      ":LOCATE 20,1 :PRINT"Mi a neve (sorszåm) ";:INPUT A$
 1055 IF A$="9" THEN PRINT"Jò":GOSUB 2700:GOTO 1060
 1056 H=H+1:LOCATE 1,10:PRINT"HIBA:";H:LOCATE 21,1:PRINT"          ":GOTO 1050
 1060 LOCATE 20,1:PRINT"                                                                                                                      "
 1070 GOSUB 3000
 1075 INPUT X$
 1080 IF K=10 OR K=12 OR K=14 OR K=19 OR K=22 OR K=4 THEN Y$="i" :ELSE Y$="n"
 1085 IF Y$=X$ THEN LOCATE 21,1:PRINT"Jó!"
 1086 IF Y$=X$ THEN B$=INPUT $(1):GOTO 120
 1087 H=H+1:LOCATE 1,10:PRINT"HIBA:";H
 1099 LOCATE 20,1:PRINT"                                      ":GOTO 1070
 1100 LINE (10,50)-(80,50)
 1105 LINE (10,50)-(30,10)
 1110 LINE (30,10)-(60,10)
 1112 LINE (60,10)-(80,50)
 1115 LOCATE 8,7:PRINT"a"
 1120 LOCATE 4,11:PRINT"b"
 1125 LOCATE 1,7:PRINT"c"
 1126 LOCATE 4,2:PRINT"d"
 1149 GOSUB 2500
 1150 LOCATE 20,1:PRINT"                                      ":LOCATE 20,1 :PRINT"Mi a neve (sorszåm) ";:INPUT A$
 1155 IF A$="10" THEN PRINT"Jò":GOSUB 2700:GOTO 1160
 1156 H=H+1:LOCATE 1,10:PRINT"HIBA:";H:LOCATE 21,1:PRINT"          ":GOTO 1150
 1160 LOCATE 20,1:PRINT"                                                                                                                      "
 1170 GOSUB 3000
 1175 INPUT X$
 1180 IF K=2 OR K=4 OR K=6 OR K=14 OR K=15 OR K=22 OR K=20 THEN Y$="i" :ELSE Y$="n"
 1185 IF Y$=X$ THEN LOCATE 21,1:PRINT"Jó!"
 1186 IF Y$=X$ THEN B$=INPUT $(1):GOTO 120
 1187 H=H+1:LOCATE 1,10:PRINT"HIBA:";H
 1199 LOCATE 20,1:PRINT"                                      ":GOTO 1170
 1200 LINE (10,50)-(90,50)
 1205 LINE (10,50)-(30,10)
 1210 LINE (30,10)-(110,10)
 1212 LINE (110,10)-(90,50)
 1215 LOCATE 8,7:PRINT"a"
 1220 LOCATE 4,14:PRINT"b"
 1225 LOCATE 1,9:PRINT"c"
 1226 LOCATE 4,2:PRINT"d"
 1249 GOSUB 2500
 1250 LOCATE 20,1:PRINT"                                      ":LOCATE 20,1 :PRINT"Mi a neve (sorszåm) ";:INPUT A$
 1255 IF A$="11" THEN PRINT"Jò":GOSUB 2700:GOTO 1260
 1256 H=H+1:LOCATE 1,10:PRINT"HIBA:";H:LOCATE 21,1:PRINT"          ":GOTO 1250
 1260 LOCATE 20,1:PRINT"                                                                                                                      "
 1270 GOSUB 3000
 1275 INPUT X$
 1280 IF K=5 OR K=11 OR K=14 OR K=19 THEN Y$="i" :ELSE Y$="n"
 1285 IF Y$=X$ THEN LOCATE 21,1:PRINT"Jó!"
 1286 IF Y$=X$ THEN B$=INPUT $(1):GOTO 120
 1287 H=H+1:LOCATE 1,10:PRINT"HIBA:";H
 1299 LOCATE 20,1:PRINT"                                      ":GOTO 1270
 1300 LINE (50,10)-(70,20)
 1305 LINE (50,10)-(30,20)
 1310 LINE (30,20)-(50,70)
 1312 LINE (70,20)-(50,70)
 1315 LOCATE 6,9:PRINT"a"
 1320 LOCATE 2,9:PRINT"b"
 1325 LOCATE 2,5:PRINT"c"
 1326 LOCATE 6,4:PRINT"d"
 1349 GOSUB 2500
 1350 LOCATE 20,1:PRINT"                                      ":LOCATE 20,1 :PRINT"Mi a neve (sorszåm) ";:INPUT A$
 1355 IF A$="12" THEN PRINT"Jò":GOSUB 2700:GOTO 1360
 1356 H=H+1:LOCATE 1,10:PRINT"HIBA:";H:LOCATE 21,1:PRINT"          ":GOTO 1350
 1360 LOCATE 20,1:PRINT"                                                                                                                      "
 1370 GOSUB 3000
 1375 INPUT X$
 1380 IF K=6 OR K=11 OR K=14 OR K=16 OR K=17 OR K=20 OR K=22 OR K=23 THEN Y$="i" :ELSE Y$="n"
 1385 IF Y$=X$ THEN LOCATE 21,1:PRINT"Jó!"
 1386 IF Y$=X$ THEN B$=INPUT $(1):GOTO 120
 1387 H=H+1:LOCATE 1,10:PRINT"HIBA:";H
 1399 LOCATE 20,1:PRINT"                                      ":GOTO 1370
 1400 LINE (50,30)-(70,20)
 1405 LINE (50,30)-(30,20)
 1410 LINE (30,20)-(50,70)
 1412 LINE (70,20)-(50,70)
 1415 LOCATE 6,9:PRINT"a"
 1420 LOCATE 3,8:PRINT"b"
 1425 LOCATE 3,6:PRINT"c"
 1426 LOCATE 6,4:PRINT"d"
 1449 GOSUB 2500
 1450 LOCATE 20,1:PRINT"                                      ":LOCATE 20,1 :PRINT"Mi a neve (sorszåm) ";:INPUT A$
 1455 IF A$="13" THEN PRINT"Jò":GOSUB 2700:GOTO 1460
 1456 H=H+1:LOCATE 1,10:PRINT"HIBA:";H:LOCATE 21,1:PRINT"          ":GOTO 1450
 1460 LOCATE 20,1:PRINT"                                                                                                                      "
 1470 GOSUB 3000
 1475 INPUT X$
 1480 IF K=6 OR K=11 OR K=14 OR K=16 OR K=17 OR K=20 OR K=22 OR K=23 THEN Y$="i" :ELSE Y$="n"
 1485 IF Y$=X$ THEN LOCATE 21,1:PRINT"Jó!"
 1486 IF Y$=X$ THEN B$=INPUT $(1):GOTO 120
 1487 H=H+1:LOCATE 1,10:PRINT"HIBA:";H
 1499 LOCATE 20,1:PRINT"                                      ":GOTO 1470
 1500 LINE (50,10)-(90,10)
 1505 LINE (50,10)-(30,40)
 1510 LINE (30,40)-(70,40)
 1512 LINE (70,40)-(90,10)
 1515 LOCATE 7,7:PRINT"a"
 1520 LOCATE 4,12:PRINT"b"
 1525 LOCATE 4,4:PRINT"d"
 1526 LOCATE 1,9:PRINT"d"
 1549 GOSUB 2500
 1550 LOCATE 20,1:PRINT"                                      ":LOCATE 20,1 :PRINT"Mi a neve (sorszåm) ";:INPUT A$
 1555 IF A$="14" THEN PRINT"Jò":GOSUB 2700:GOTO 1560
 1556 H=H+1:LOCATE 1,10:PRINT"HIBA:";H:LOCATE 21,1:PRINT"          ":GOTO 1550
 1560 LOCATE 20,1:PRINT"                                                                                                                      "
 1570 GOSUB 3000
 1575 INPUT X$
 1580 IF K=1 OR K=5 OR K=11 OR K=14 OR K=16 OR K=21 THEN Y$="i" :ELSE Y$="n"
 1585 IF Y$=X$ THEN LOCATE 21,1:PRINT"Jó!"
 1586 IF Y$=X$ THEN B$=INPUT $(1):GOTO 120
 1587 H=H+1:LOCATE 1,10:PRINT"HIBA:";H
 1599 LOCATE 20,1:PRINT"                                      ":GOTO 1570
 1600 LINE (45,10)-(90,10)
 1605 LINE (45,10)-(45,50)
 1610 LINE (45,50)-(90,50)
 1612 LINE (90,50)-(90,10)
 1615 LOCATE 8,9:PRINT"a"
 1620 LOCATE 4,13:PRINT"a"
 1625 LOCATE 4,5:PRINT"a"
 1626 LOCATE 1,9:PRINT"a"
 1649 GOSUB 2500
 1650 LOCATE 20,1:PRINT"                                      ":LOCATE 20,1 :PRINT"Mi a neve (sorszåm) ";:INPUT A$
 1655 IF A$="15" THEN PRINT"Jò":GOSUB 2700:GOTO 1660
 1656 H=H+1:LOCATE 1,10:PRINT"HIBA:";H:LOCATE 21,1:PRINT"          ":GOTO 1650
 1660 LOCATE 20,1:PRINT"                                                                                                                      "
 1670 GOSUB 3000
 1675 INPUT X$
 1680 IF K=1 OR K=5 OR K=8 OR K=9 OR K=11 OR K=14 OR K=15 OR K=16 OR K=18 THEN Y$="i" :ELSE Y$="n"
 1685 IF Y$=X$ THEN LOCATE 21,1:PRINT"Jó!"
 1686 IF Y$=X$ THEN B$=INPUT $(1):GOTO 120
 1687 H=H+1:LOCATE 1,10:PRINT"HIBA:";H
 1699 LOCATE 20,1:PRINT"                                      ":GOTO 1670
 1700 LINE (25,10)-(90,10)
 1705 LINE (25,10)-(25,50)
 1710 LINE (25,50)-(90,50)
 1712 LINE (90,50)-(90,10)
 1715 LOCATE 8,8:PRINT"a"
 1720 LOCATE 4,13:PRINT"b"
 1725 LOCATE 4,3:PRINT"a"
 1726 LOCATE 1,8:PRINT"c"
 1749 GOSUB 2500
 1750 LOCATE 20,1:PRINT"                                      ":LOCATE 20,1 :PRINT"Mi a neve (sorszåm) ";:INPUT A$
 1755 IF A$="16" THEN PRINT"Jò":GOSUB 2700:GOTO 1760
 1756 H=H+1:LOCATE 1,10:PRINT"HIBA:";H:LOCATE 21,1:PRINT"          ":GOTO 1750
 1760 LOCATE 20,1:PRINT"                                                                                                                      "
 1770 GOSUB 3000
 1775 INPUT X$
 1780 IF K=5 OR K=8 OR K=9 OR K=11 OR K=14 OR K=15 OR K=18 OR K=21 THEN Y$="i" :ELSE Y$="n"
 1785 IF Y$=X$ THEN LOCATE 21,1:PRINT"Jó!"
 1786 IF Y$=X$ THEN B$=INPUT $(1):GOTO 120
 1787 H=H+1:LOCATE 1,10:PRINT"HIBA:";H
 1799 LOCATE 20,1:PRINT"                                      ":GOTO 1770
 1800 CIRCLE (50,50),30
 1810 LINE (50,50)-(80,50)
 1820 LOCATE 6,8:PRINT"r"
 1849 GOSUB 2500
 1850 LOCATE 20,1:PRINT"                                      ":LOCATE 20,1 :PRINT"Mi a neve (sorszåm) ";:INPUT A$
 1855 IF A$="17" THEN PRINT"Jò":GOSUB 2700:GOTO 1860
 1856 H=H+1:LOCATE 1,10:PRINT"HIBA:";H:LOCATE 21,1:PRINT"          ":GOTO 1850
 1860 LOCATE 20,1:PRINT"                                                                                                                      "
 1870 GOSUB 3000
 1875 INPUT X$
 1880 IF K=13 OR K=23 THEN Y$="i" :ELSE Y$="n"
 1885 IF Y$=X$ THEN LOCATE 21,1:PRINT"Jó!"
 1886 IF Y$=X$ THEN B$=INPUT $(1):GOTO 120
 1887 H=H+1:LOCATE 1,10:PRINT"HIBA:";H
 1899 LOCATE 20,1:PRINT"                                      ":GOTO 1870
 1900 FOR I=72 TO 433 STEP 72
 1910 X=50+30*SIN(3.14/180*I)
 1920 Y=50+30*COS(3.14/180*I)
 1925 IF I=72 THEN PSET (X,Y)
 1930 LINE -(X,Y)
 1940 NEXT I
 1941 LOCATE 3,7:PRINT"a"
 1942 LOCATE 6,11:PRINT"a"
 1943 LOCATE 6,3:PRINT"a"
 1944 LOCATE 9,11:PRINT"a"
 1945 LOCATE 9,3:PRINT"a"
 1949 GOSUB 2500
 1950 LOCATE 20,1:PRINT"                                      ":LOCATE 20,1 :PRINT"Mi a neve (sorszåm) ";:INPUT A$
 1955 IF A$="18" THEN PRINT"Jò":GOSUB 2700:GOTO 1960
 1956 H=H+1:LOCATE 1,10:PRINT"HIBA:";H:LOCATE 21,1:PRINT"          ":GOTO 1950
 1960 LOCATE 20,1:PRINT"                                                                                                                      "
 1970 GOSUB 3000
 1975 INPUT X$
 1980 IF K=1 OR K=9 OR K=22 OR K=23 OR K=24 THEN Y$="i" :ELSE Y$="n"
 1985 IF Y$=X$ THEN LOCATE 21,1:PRINT"Jó!"
 1986 IF Y$=X$ THEN B$=INPUT $(1):GOTO 120
 1987 H=H+1:LOCATE 1,10:PRINT"HIBA:";H
 1999 LOCATE 20,1:PRINT"                                      ":GOTO 1970
 2000 FOR I=60 TO 421 STEP 60
 2010 X=50+30*SIN(3.14/180*I)
 2020 Y=50+30*COS(3.14/180*I)
 2025 IF I=60 THEN PSET (X,Y)
 2030 LINE -(X,Y)
 2040 NEXT I
 2041 LOCATE 4,4:PRINT"a"
 2042 LOCATE 7,11:PRINT"a"
 2043 LOCATE 7,3:PRINT"a"
 2044 LOCATE 10,10:PRINT"a"
 2045 LOCATE 10,4:PRINT"a"
 2046 LOCATE 4,10:PRINT"a"
 2049 GOSUB 2500
 2050 LOCATE 20,1:PRINT"                                      ":LOCATE 20,1 :PRINT"Mi a neve (sorszåm) ";:INPUT A$
 2055 IF A$="19" THEN PRINT"Jò":GOSUB 2700:GOTO 2060
 2056 H=H+1:LOCATE 1,10:PRINT"HIBA:";H:LOCATE 21,1:PRINT"          ":GOTO 2050
 2060 LOCATE 20,1:PRINT"                                                                                                                      "
 2070 GOSUB 3000
 2075 INPUT X$
 2080 IF K=1 OR K=5 OR K=9 OR K=11 OR K=24 THEN Y$="i" :ELSE Y$="n"
 2085 IF Y$=X$ THEN LOCATE 21,1:PRINT"Jó!"
 2086 IF Y$=X$ THEN B$=INPUT $(1):GOTO 120
 2087 H=H+1:LOCATE 1,10:PRINT"HIBA:";H
 2099 LOCATE 20,1:PRINT"                                      ":GOTO 2070
 2500 LOCATE 1,20:PRINT" 1.tompaszÖgÜ"
 2510 LOCATE 2,20:PRINT" 2.hegyesszÖgÜ"
 2520 LOCATE 3,20:PRINT" 3.derékszÖgÜ"
 2530 LOCATE 4,20:PRINT" 4.egy.sz.hegyessz."
 2540 LOCATE 5,20:PRINT" 5.egy.sz.tompasz."
 2550 LOCATE 6,20:PRINT" 6.egy.sz.deréksz."
 2560 LOCATE 7,20:PRINT" 7.szabålyos"
 2570 LOCATE 8,20:PRINT" 8.ålt. négyszÖg"
 2580 LOCATE 9,20:PRINT" 9.trapéz"
 2590 LOCATE 10,20:PRINT"10.hurtrapéz"
 2600 LOCATE 11,20:PRINT"11.paralelogramma"
 2610 LOCATE 12,20:PRINT"12.konvex deltoid"
 2620 LOCATE 13,20:PRINT"13.konkåv deltoid"
 2630 LOCATE 14,20:PRINT"14.rombusz"
 2640 LOCATE 15,20:PRINT"15.négyzet"
 2650 LOCATE 16,20:PRINT"16.téglalap"
 2660 LOCATE 17,20:PRINT"17.kÖr"
 2670 LOCATE 18,20:PRINT"18.szabålyos ÖtszÖg"
 2680 LOCATE 19,20:PRINT"19.szabålyos hatszÖg"
 2690 RETURN
 2700 V$=INPUT $(1):LOCATE 1,20:PRINT"             "
 2710 LOCATE 2,20:PRINT"              "
 2720 LOCATE 3,20:PRINT"             "
 2730 LOCATE 4,20:PRINT"                   "
 2740 LOCATE 5,20:PRINT"                  "
 2750 LOCATE 6,20:PRINT"                  "
 2760 LOCATE 7,20:PRINT"            "
 2770 LOCATE 8,20:PRINT"                "
 2780 LOCATE 9,20:PRINT"         "
 2790 LOCATE 10,20:PRINT"            "
 2800 LOCATE 11,20:PRINT"                 "
 2810 LOCATE 12,20:PRINT"                 "
 2820 LOCATE 13,20:PRINT"                 "
 2830 LOCATE 14,20:PRINT"          "
 2840 LOCATE 15,20:PRINT"          "
 2850 LOCATE 16,20:PRINT"           "
 2860 LOCATE 17,20:PRINT"      "
 2870 LOCATE 18,20:PRINT"                   "
 2880 LOCATE 19,20:PRINT"                    "
 2890 RETURN
 3000 ON K GOTO 3010,3020,3030,3040,3050,3060,3070,3080,3090,3100,3110,3120,3130,3140,3150,3160,3170,3180,3190,3200,3210,3220,3230,3240,3250
 3010 LOCATE 20,1:PRINT"Minden oldala egyenlÖ (i/n)";:RETURN
 3020 LOCATE 20,1:PRINT"Csak 2 oldala egyenlÖ (i/n)";:RETURN
 3030 LOCATE 20,1:PRINT"Csak 3 oldala egyenlÖ (i/n)";:RETURN
 3040 LOCATE 20,1:PRINT"2 db. pårhuzamos oldala van (i/n)";:RETURN
 3050 LOCATE 20,1:PRINT"2-2  pårhuzamos oldala van (i/n)";:RETURN
 3060 LOCATE 20,1:PRINT"Csak 2 egyenlÖ szÖge van (i/n)";:RETURN
 3070 LOCATE 20,1:PRINT"Csak 3 egyenlÖ szÖge van (i/n)";:RETURN
 3080 LOCATE 20,1:PRINT"4 egyenlÖ szÖge van (i/n)";:RETURN
 3090 LOCATE 20,1:PRINT"Minden szÖge egyenlÖ (i/n)";:RETURN
 3100 LOCATE 20,1:PRINT"Minden oldala kÜlÖnbÖzÖ (i/n)";:RETURN
 3110 LOCATE 20,1:PRINT"2-2 egyenlÖ oldala van (i/n)";:RETURN
 3120 LOCATE 20,1:PRINT"Nincs egyenlÖ szÖge (i/n)";:RETURN
 3130 LOCATE 20,1:PRINT"Nincs åtlòja (i/n)";:RETURN
 3140 LOCATE 20,1:PRINT"Csak 2 åtlòja van (i/n)";:RETURN
 3150 LOCATE 20,1:PRINT"Åtlòi egyenlÖek (i/n)";:RETURN
 3160 LOCATE 20,1:PRINT"Åtlòi merÖlegesek egymåsra  (i/n)";:RETURN
 3170 LOCATE 20,1:PRINT"Egyik åtlò felezi a måsikat (i/n)";:RETURN
 3180 LOCATE 20,1:PRINT"Minden szÖge derékszÖg  (i/n)";:RETURN
 3190 LOCATE 20,1:PRINT"Nincs szimmetria tengelye  (i/n)";:RETURN
 3200 LOCATE 20,1:PRINT"Egy szimmetria tengelye van (i/n)";:RETURN
 3210 LOCATE 20,1:PRINT"Két szimmetria tengelye van (i/n)";:RETURN
 3220 LOCATE 20,1:PRINT"Nincs szimmetria kÖzéppontja (i/n)";:RETURN
 3230 LOCATE 20,1:PRINT"Van szimmetria kÖzéppontja (i/n)";:RETURN
 3240 LOCATE 20,1:PRINT"Nincs pårhuzamos oldala (i/n)";:RETURN
 3250 LOCATE 20,1:PRINT"Legnagyobb szÖge hegyesszÖg (i/n)";:RETURN
