   10 SCREEN 1
   20 KEY OFF
   25 F=0:H=0:S=0
   30 CLS
   40 LOCATE 11,8:PRINT"SOKSZÖGEK KERÜLETE, TERÜLETE"
   50 X$=INPUT $(1)
   60 CLS
   65 GOSUB 9000
   70 PRINT:PRINT"Egész, vagy tÖrtszåmokkal akarsz    szå-molni?          (e/t)";
   80 A$=INPUT $(1)
   81 A=VAL(RIGHT$(TIME$,2))
   82 RANDOMIZE A
   85 IF A$="t" THEN GOTO 210
   86 IF A$="e" THEN GOTO 110
   87 CLS:GOTO 70
  110 A=INT(RND*100)
  120 B=INT(RND*100)
  130 C=INT(RND*100)
  140 D=INT(RND*100)
  141 IF A<B OR A<C OR A<C OR A<D THEN GOTO 110
  142 IF A+B<C OR A+C<B OR B+C<A THEN GOTO 110
  143 IF A=0 OR B=0 OR C=0 THEN GOTO 110
  145 GOTO 250
  210 A=INT(RND*100)/10:B$=STR$(A):IF LEN(B$)>5 THEN GOTO 210
  220 B=INT(RND*1000)/100:B$=STR$(B):IF LEN(B$)>5 THEN GOTO 220
  230 C=INT(RND*100)/10:B$=STR$(C):IF LEN (B$)>5 THEN  GOTO 230
  240 D=INT(RND*1000)/100:B$=STR$(D):IF LEN (B$)>5 THEN GOTO 240
  241 IF A<D OR  A<B OR A<C  THEN GOTO 210
  242 IF A+B<C OR A+C<B OR B+C<A OR B+B<A THEN GOTO 210
  243 IF A=0 OR B=0 OR C=0 THEN GOTO 210
  250 CLS
  260 PRINT"Milyen síkidommal kívånsz foglalkozni?"
  270 PRINT:PRINT"A megfelelÖ szåmmal vålaszolj!"
  280 PRINT:PRINT"1. åltalånos håromszÖg"
  290 PRINT"2. egyenlÖ szåru håromszÖg"
  300 PRINT"3. derékszÖgÜ  håromszÖg"
  310 PRINT"4. szabålyos  håromszÖg"
  320 PRINT:PRINT"5. åltalånos négyszÖg"
  330 PRINT"6. trapéz"
  340 PRINT"7. hurtrapéz"
  350 PRINT"8. paralelogramma"
  360 PRINT"9. négyzet"
  370 PRINT"10. téglalap"
  380 PRINT"11. rombusz"
  390 PRINT"12. deltoid"
  400 PRINT:PRINT"13. kÖr"
  410 PRINT"14. szabålyos ÖtszÖg"
  420 PRINT"15. szabålyos hatszÖg"
  430 PRINT:INPUT X$
  440 IF X$="1" THEN GOTO 500
  445 IF X$="2" THEN GOTO 1000
  450 IF X$="3" THEN GOTO 1500
  455 IF X$="4" THEN GOTO 2000
  460 IF X$="5" THEN GOTO 2500
  465 IF X$="6" THEN GOTO 3000
  470 IF X$="7" THEN GOTO 3500
  475 IF X$="8" THEN GOTO 4000
  480 IF X$="9" THEN GOTO 4500
  485 IF X$="10" THEN GOTO 5000
  490 IF X$="11" THEN GOTO 5500
  491 IF X$="12" THEN GOTO 6000
  492 IF X$="13" THEN GOTO 6500
  493 IF X$="14" THEN GOTO 7000
  494 IF X$="15" THEN GOTO 7500
  495 GOTO 250
  500 CLS:PRINT:PRINT"Åltalånos håromszÖg"
  510 LINE (40,50)-(130,50)
  520 LINE (40,50)-(100,20)
  525 LINE (100,20)-(130,50)
  526 LINE (100,20)-(100,50)
  530 LOCATE 8,11:PRINT"a"
  540 LOCATE 4,16:PRINT"b"
  550 LOCATE 4,9:PRINT"c"
  560 LOCATE 5,13:PRINT"m"
  565 PRINT:PRINT:PRINT:PRINT
  570 PRINT"a=";A;" cm"
  580 PRINT"b=";B;" cm"
  590 PRINT"c=";C;" cm"
  595 M=INT(SQR(C^2-((C^2-B^2+A^2)/(2*A))^2)):IF M=0 THEN M=1
  600 PRINT"m=";M;" cm"
  610 LOCATE 15,1:PRINT"Mennyi a håromszÖg kerÜlete";
  620 LOCATE 22,1:PRINT"Kérsz segítséget i/n"
  630 X$=INPUT $(1)
  650 IF X$="i" THEN PRINT "K=a+b+c":S=S+1
  651 F=F+1:LOCATE 2,28:PRINT"Feladat: ";F:LOCATE 3,28:PRINT"Hiba:    ";H:LOCATE 4,28:PRINT"Segitség:";S
  660 LOCATE 16,1:SOUND 1527,5 :INPUT E:LOCATE 16,8:PRINT"    cm"
  670 K=A+B+C
  675 IF A$="t" THEN E=E*1000:K=K*1000
  680 IF ABS(E-K)>10 THEN PRINT "Hibås megoldås,  szåmold újra!":H=H+1:GOSUB 9200:GOTO 610
  690 PRINT "A megoldås jó                               ":GOSUB 9250
  700 X$=INPUT $(1)
  701 LOCATE 16,1:PRINT"                                                                               "
  702 LOCATE 23,1:PRINT"                                     "
  710 LOCATE 15,1:PRINT"Mennyi a håromszÖg terÜlete";
  720 LOCATE 22,1:PRINT"Kérsz segítséget i/n"
  730 X$=INPUT $(1)
  750 IF X$="i" THEN PRINT "T=a*m/2":S=S+1
  751 F=F+1:LOCATE 2,28:PRINT"Feladat: ";F:LOCATE 3,28:PRINT"Hiba:    ";H:LOCATE 4,28:PRINT"Segitség:";S
  760 LOCATE 16,1:SOUND 1527,5 :INPUT E:LOCATE 16,8:PRINT"    cm²"
  765 T=A*M/2
  770 IF A$="e" THEN T=FIX(T)
  771 IF A$="t" THEN T=FIX(T*1000):E=FIX(E*1000)
  780 IF ABS(E-T)>10 THEN PRINT "Hibås megoldås,  szåmold újra!":H=H+1:GOSUB 9200:GOTO 710
  790 PRINT "A megoldås jó                               ":GOSUB 9250
  800 X$=INPUT $(1)
  810 CLS:PRINT:PRINT:PRINT"Akarsz tovåbb szåmolni?  (i/n)"
  820 X$=INPUT $(1)
  830 IF X$="i" THEN GOTO 70
  840 PRINT:PRINT:PRINT"                 SZIA":END
 1000 CLS:PRINT:PRINT"EgyenlÖ szåru håromszÖg"
 1010 LINE (40,50)-(130,50)
 1020 LINE (40,50)-(85,20)
 1025 LINE (85,20)-(130,50)
 1026 LINE (85,20)-(85,50)
 1030 LOCATE 8,11:PRINT"a"
 1040 LOCATE 4,15:PRINT"b"
 1050 LOCATE 4,8:PRINT"c"
 1060 LOCATE 5,12:PRINT"m"
 1065 PRINT:PRINT:PRINT:PRINT
 1070 PRINT"a=";A;" cm"
 1080 PRINT"b=";B;" cm"
 1090 PRINT"c=";B;" cm"
 1091 IF A=B THEN B=C
 1095 M=INT(SQR(B^2-(A^2/4))):IF M=0 THEN M=1
 1100 PRINT"m=";M;" cm"
 1110 LOCATE 15,1:PRINT"Mennyi a håromszÖg kerÜlete";
 1120 LOCATE 22,1:PRINT"Kérsz segítséget i/n"
 1130 X$=INPUT $(1)
 1150 IF X$="i" THEN PRINT "K=a+b+c":S=S+1
 1160 F=F+1:LOCATE 2,28:PRINT"Feladat: ";F:LOCATE 3,28:PRINT"Hiba:    ";H:LOCATE 4,28:PRINT"Segitség:";S
 1165 LOCATE 16,1:SOUND 1527,5 :INPUT E:LOCATE 16,8:PRINT"    cm"
 1170 K=A+B+B
 1180 IF ABS(E-K)>1 THEN PRINT "Hibås megoldås,  szåmold újra!":H=H+1:GOSUB 9200:GOTO 1110
 1190 PRINT "A megoldås jó                               ":GOSUB 9250
 1200 X$=INPUT $(1)
 1201 LOCATE 16,1:PRINT"                                                                               "
 1202 LOCATE 23,1:PRINT"                                     "
 1210 LOCATE 15,1:PRINT"Mennyi a håromszÖg terÜlete";
 1220 LOCATE 22,1:PRINT"Kérsz segítséget i/n"
 1230 X$=INPUT $(1)
 1250 IF X$="i" THEN PRINT "T=a*m/2":S=S+1
 1251 F=F+1:LOCATE 2,28:PRINT"Feladat: ";F:LOCATE 3,28:PRINT"Hiba:    ";H:LOCATE 4,28:PRINT"Segitség:";S
 1260 LOCATE 16,1:SOUND 1527,5 :INPUT E:LOCATE 16,8:PRINT"    cm²"
 1270 T=A*M/2:IF A$="e" THEN T=FIX(T)
 1271 T=A*M/2:IF A$="t" THEN T=FIX(T*1000):E=FIX(E*1000)
 1280 IF ABS(E-T)>10 THEN PRINT "Hibås megoldås,  szåmold újra!":H=H+1:GOSUB 9200:GOTO 1260
 1290 PRINT "A megoldås jó                               ":GOSUB 9250
 1300 X$=INPUT $(1)
 1310 CLS:PRINT:PRINT:PRINT"Akarsz tovåbb szåmolni?  (i/n)"
 1320 X$=INPUT $(1)
 1330 IF X$="i" THEN GOTO 70
 1340 PRINT:PRINT:PRINT"                 SZIA":END
 1500 CLS:PRINT:PRINT"DerékszögÜ håromszÖg"
 1510 LINE (40,50)-(130,50)
 1520 LINE (40,50)-(40,20)
 1525 LINE (40,20)-(130,50)
 1530 LOCATE 5,5:PRINT"a"
 1540 LOCATE 8,11:PRINT"b"
 1550 LOCATE 4,11:PRINT"c"
 1565 PRINT:PRINT:PRINT:PRINT
 1570 PRINT"a=";A;" cm"
 1580 PRINT"b=";B;" cm"
 1585 C=INT(SQR(A^2+B^2))
 1590 PRINT"c=";C;" cm"
 1610 LOCATE 15,1:PRINT"Mennyi a håromszÖg kerÜlete";
 1620 LOCATE 22,1:PRINT"Kérsz segítséget i/n"
 1630 X$=INPUT $(1)
 1650 IF X$="i" THEN PRINT "K=a+b+c":S=S+1
 1651 F=F+1:LOCATE 2,28:PRINT"Feladat: ";F:LOCATE 3,28:PRINT"Hiba:    ";H:LOCATE 4,28:PRINT"Segitség:";S
 1660 LOCATE 16,1:SOUND 1527,5 :INPUT E:LOCATE 16,8:PRINT"    cm"
 1670 K=A+B+C:K=K*1000:E=E*1000
 1680 IF ABS(E-K)>10 THEN PRINT "Hibås megoldås,  szåmold újra!":H=H+1:GOSUB 9200:GOTO 1610
 1690 PRINT "A megoldås jó                               ":GOSUB 9250
 1700 X$=INPUT $(1)
 1701 LOCATE 16,1:PRINT"                                                                               "
 1702 LOCATE 23,1:PRINT"                                     "
 1710 LOCATE 15,1:PRINT"Mennyi a håromszÖg terÜlete";
 1720 LOCATE 22,1:PRINT"Kérsz segítséget i/n"
 1730 X$=INPUT $(1)
 1750 IF X$="i" THEN PRINT "T=a*b/2":S=S+1
 1751 F=F+1:LOCATE 2,28:PRINT"Feladat: ";F:LOCATE 3,28:PRINT"Hiba:    ";H:LOCATE 4,28:PRINT"Segitség:";S
 1760 LOCATE 16,1:SOUND 1527,5 :INPUT E:LOCATE 16,8:PRINT"    cm²"
 1765 T=A*B/2
 1770 IF A$="e" THEN T=INT(T)
 1771 IF A$="t" THEN T=FIX(T*1000):E=FIX(E*1000)
 1780 IF ABS(E-T)>10 THEN PRINT "Hibås megoldås,  szåmold újra!":H=H+1:GOSUB 9200:GOTO 1710
 1790 PRINT "A megoldås jó                               ":GOSUB 9250
 1800 X$=INPUT $(1)
 1810 CLS:PRINT:PRINT:PRINT"Akarsz tovåbb szåmolni?  (i/n)"
 1820 X$=INPUT $(1)
 1830 IF X$="i" THEN GOTO 70
 1840 PRINT:PRINT:PRINT"                 SZIA":END
 2000 CLS:PRINT:PRINT"Szabålyos håromszÖg"
 2010 LINE (40,60)-(110,60)
 2020 LINE (40,60)-(75,20)
 2025 LINE (75,20)-(110,60)
 2026 LINE (75,20)-(75,60)
 2030 LOCATE 9,10:PRINT"a"
 2040 LOCATE 5,13:PRINT"b"
 2050 LOCATE 5,7:PRINT"c"
 2060 LOCATE 6,11:PRINT"m"
 2065 PRINT:PRINT:PRINT:PRINT
 2070 PRINT"a=";A;" cm"
 2080 PRINT"b=";A;" cm"
 2090 PRINT"c=";A;" cm"
 2095 M=INT(SQR(A^2-(A^2/4))):IF M=0 THEN M=1
 2100 PRINT"m=";M;" cm"
 2110 LOCATE 15,1:PRINT"Mennyi a håromszÖg kerÜlete";
 2120 LOCATE 22,1:PRINT"Kérsz segítséget i/n"
 2130 X$=INPUT $(1)
 2150 IF X$="i" THEN PRINT "K=a+a+a":S=S+1
 2151 F=F+1:LOCATE 2,28:PRINT"Feladat: ";F:LOCATE 3,28:PRINT"Hiba:    ";H:LOCATE 4,28:PRINT"Segitség:";S
 2160 LOCATE 16,1:SOUND 1527,5 :INPUT E:LOCATE 16,8:PRINT"    cm"
 2170 K=A+A+A
 2175 IF A$="t" THEN E=E*1000:K=K*1000
 2180 IF ABS(E-K)>10 THEN PRINT "Hibås megoldås,  szåmold újra!":H=H+1:GOSUB 9200:GOTO 2110
 2190 PRINT "A megoldås jó                               ":GOSUB 9250
 2200 X$=INPUT $(1)
 2201 LOCATE 16,1:PRINT"                                                                               "
 2202 LOCATE 23,1:PRINT"                                     "
 2210 LOCATE 15,1:PRINT"Mennyi a håromszÖg terÜlete";
 2220 LOCATE 22,1:PRINT"Kérsz segítséget i/n"
 2230 X$=INPUT $(1)
 2250 IF X$="i" THEN PRINT "T=a*m/2":S=S+1
 2251 F=F+1:LOCATE 2,28:PRINT"Feladat: ";F:LOCATE 3,28:PRINT"Hiba:    ";H:LOCATE 4,28:PRINT"Segitség:";S
 2260 LOCATE 16,1:SOUND 1527,5 :INPUT E:LOCATE 16,8:PRINT"    cm²"
 2265 T=A*M/2
 2270 IF A$="e" THEN T=FIX(T)
 2271 IF A$="t" THEN T=FIX(T*1000):E=FIX(E*1000)
 2280 IF ABS(E-T)>10 THEN PRINT "Hibås megoldås,  szåmold újra!":H=H+1:GOSUB 9200:GOTO 2210
 2290 PRINT "A megoldås jó                               ":GOSUB 9250
 2300 X$=INPUT $(1)
 2310 CLS:PRINT:PRINT:PRINT"Akarsz tovåbb szåmolni?  (i/n)"
 2320 X$=INPUT $(1)
 2330 IF X$="i" THEN GOTO 70
 2340 PRINT:PRINT:PRINT"                 SZIA":END
 2500 CLS:PRINT:PRINT"Åltalånos négyszÖg"
 2510 LINE (40,70)-(130,50)
 2520 LINE (40,70)-(70,20)
 2525 LINE (70,20)-(100,20)
 2526 LINE (100,20)-(130,50)
 2530 LOCATE 9,11:PRINT"a"
 2540 LOCATE 4,16:PRINT"b"
 2550 LOCATE 6,6:PRINT"d"
 2560 LOCATE 3,11:PRINT"c"
 2565 PRINT:PRINT:PRINT:PRINT
 2570 LOCATE 10,20:PRINT"a=";A;" cm"
 2580 LOCATE 11,20:PRINT"b=";B;" cm"
 2590 LOCATE 12,20:PRINT"c=";C;" cm"
 2592 LOCATE 13,20:PRINT"d=";D;" cm"
 2610 LOCATE 15,1:PRINT"Mennyi a négyszÖg kerÜlete";
 2620 LOCATE 22,1:PRINT"Kérsz segítséget i/n"
 2630 X$=INPUT $(1)
 2650 IF X$="i" THEN PRINT "K=a+b+c+d":S=S+1
 2651 F=F+1:LOCATE 2,28:PRINT"Feladat: ";F:LOCATE 3,28:PRINT"Hiba:    ";H:LOCATE 4,28:PRINT"Segitség:";S
 2660 LOCATE 16,1:SOUND 1527,5 :INPUT E:LOCATE 16,8:PRINT"    cm"
 2670 K=A+B+C+D
 2675 IF A$="t" THEN E=E*1000:K=K*1000
 2680 IF ABS(E-K)>10 THEN PRINT "Hibås megoldås,  szåmold újra!":H=H+1:GOSUB 9200:GOTO 2610
 2690 PRINT "A megoldås jó                               ":GOSUB 9250
 2700 X$=INPUT $(1)
 2701 LOCATE 16,1:PRINT"                                                                               "
 2702 LOCATE 23,1:PRINT"                                     "
 2710 LOCATE 15,1:PRINT"Az åltalånos négyszög terÜletének kiszå-mítåsåt nem tanultuk."
 2720 LOCATE 22,1:PRINT"                                      "
 2800 X$=INPUT $(1)
 2810 CLS:PRINT:PRINT:PRINT"Akarsz tovåbb szåmolni?  (i/n)"
 2820 X$=INPUT $(1)
 2830 IF X$="i" THEN GOTO 70
 2840 PRINT:PRINT:PRINT"                 SZIA":END
 3000 CLS:PRINT:PRINT"Trapéz"
 3010 LINE (40,55)-(130,55)
 3015 LINE (100,20)-(100,55)
 3020 LINE (40,55)-(90,20)
 3025 LINE (90,20)-(110,20)
 3026 LINE (110,20)-(130,55)
 3030 LOCATE 8,11:PRINT"a"
 3040 LOCATE 5,17:PRINT"b"
 3050 LOCATE 2,14:PRINT"c"
 3055 LOCATE 5,14:PRINT"m"
 3060 LOCATE 5,8:PRINT"d"
 3061 M=INT(D*SQR(3)/2)
 3062 A=C+INT(1.36*D)
 3063 B=INT(1.3*D)
 3065 PRINT:PRINT:PRINT:PRINT
 3070 LOCATE 9,20:PRINT"a=";A;" cm"
 3080 LOCATE 10,20:PRINT"b=";B;" cm"
 3090 LOCATE 11,20:PRINT"c=";C;" cm"
 3095 LOCATE 12,20:PRINT"d=";D" cm"
 3096 LOCATE 13,20:PRINT"m=";M" cm"
 3101 LOCATE 16,1:PRINT"                                                                               "
 3102 LOCATE 23,1:PRINT"                                     "
 3110 LOCATE 15,1:PRINT"Mennyi a trapéz kerÜlete";
 3120 LOCATE 22,1:PRINT"Kérsz segítséget i/n"
 3130 X$=INPUT $(1)
 3150 IF X$="i" THEN PRINT "K=a+b+c+d":S=S+1
 3151 F=F+1:LOCATE 2,28:PRINT"Feladat: ";F:LOCATE 3,28:PRINT"Hiba:    ";H:LOCATE 4,28:PRINT"Segitség:";S
 3160 LOCATE 16,1:SOUND 1527,5 :INPUT E:LOCATE 16,8:PRINT"    cm"
 3165 T=(A+C)/2*M
 3170 K=A+B+C+D
 3171 IF A$="t" THEN T=FIX(T*1000):E=FIX(E*1000)
 3175 IF A$="t" THEN E=E*1000:K=K*1000
 3180 IF ABS(E-K)>10 THEN PRINT "Hibås megoldås,  szåmold újra!":H=H+1:GOSUB 9200:GOTO 3110
 3190 PRINT "A megoldås jó                               ":GOSUB 9250
 3200 X$=INPUT $(1)
 3201 LOCATE 16,1:PRINT"                                                                               "
 3202 LOCATE 23,1:PRINT"                                     "
 3210 LOCATE 15,1:PRINT"Mennyi a trapéz terÜlete";
 3220 LOCATE 22,1:PRINT"Kérsz segítséget i/n"
 3230 X$=INPUT $(1)
 3250 IF X$="i" THEN PRINT "T=(a+c)/2*m":S=S+1
 3251 F=F+1:LOCATE 2,28:PRINT"Feladat: ";F:LOCATE 3,28:PRINT"Hiba:    ";H:LOCATE 4,28:PRINT"Segitség:";S
 3260 LOCATE 16,1:SOUND 1527,5 :INPUT E:LOCATE 16,8:PRINT"    cm²"
 3265 T=(A+C)/2*M
 3270 IF A$="e" THEN T=FIX(T)
 3271 IF A$="t" THEN T=FIX(T*1000):E=FIX(E*1000)
 3280 IF ABS(E-T)>10 THEN PRINT "Hibås megoldås,  szåmold újra!":H=H+1:GOSUB 9200:GOTO 3210
 3290 PRINT "A megoldås jó                               ":GOSUB 9250
 3300 X$=INPUT $(1)
 3310 CLS:PRINT:PRINT:PRINT"Akarsz tovåbb szåmolni?  (i/n)"
 3320 X$=INPUT $(1)
 3330 IF X$="i" THEN GOTO 70
 3340 PRINT:PRINT:PRINT"                 SZIA":END
 3500 CLS:PRINT:PRINT"hurtrapéz"
 3510 LINE (40,55)-(130,55)
 3520 LINE (40,55)-(70,25)
 3525 LINE (70,25)-(100,25)
 3526 LINE (100,25)-(130,55)
 3527 LINE (90,25)-(90,55)
 3530 LOCATE 8,11:PRINT"a"
 3540 LOCATE 5,16:PRINT"b"
 3550 LOCATE 3,11:PRINT"c"
 3560 LOCATE 5,13:PRINT"m"
 3561 LOCATE 5,7:PRINT"d"
 3565 PRINT:PRINT:PRINT:PRINT
 3566 B=D:A=D+C:M=INT(.86*D)
 3570 LOCATE 9,22:PRINT"a=";A;" cm"
 3580 LOCATE 10,22:PRINT"b=";B;" cm"
 3590 LOCATE 11,22:PRINT"c=";C;" cm"
 3595 LOCATE 12,22:PRINT"d=";D;" cm"
 3596 LOCATE 13,22:PRINT"m=";M;" cm"
 3610 LOCATE 15,1:PRINT"Mennyi a hurtrapéz kerÜlete";
 3620 LOCATE 22,1:PRINT"Kérsz segítséget i/n"
 3630 X$=INPUT $(1)
 3650 IF X$="i" THEN PRINT "K=a+b+c+d":S=S+1
 3651 F=F+1:LOCATE 2,28:PRINT"Feladat: ";F:LOCATE 3,28:PRINT"Hiba:    ";H:LOCATE 4,28:PRINT"Segitség:";S
 3660 LOCATE 16,1:SOUND 1527,5 :INPUT E:LOCATE 16,8:PRINT"    cm"
 3670 K=A+B+C+D
 3675 IF A$="t" THEN E=E*1000:K=K*1000
 3680 IF ABS(E-K)>10 THEN PRINT "Hibås megoldås,  szåmold újra!":H=H+1:GOSUB 9200:GOTO 3610
 3690 PRINT "A megoldås jó                               ":GOSUB 9250
 3700 X$=INPUT $(1)
 3701 LOCATE 16,1:PRINT"                                                                               "
 3702 LOCATE 23,1:PRINT"                                     "
 3710 LOCATE 15,1:PRINT"Mennyi a hurtrapéz terÜlete";
 3720 LOCATE 22,1:PRINT"Kérsz segítséget i/n"
 3730 X$=INPUT $(1)
 3750 IF X$="i" THEN PRINT "T=(a+c)/2*m":S=S+1
 3751 F=F+1:LOCATE 2,28:PRINT"Feladat: ";F:LOCATE 3,28:PRINT"Hiba:    ";H:LOCATE 4,28:PRINT"Segitség:";S
 3760 LOCATE 16,1:SOUND 1527,5 :INPUT E:LOCATE 16,8:PRINT"    cm²"
 3765 T=(A+C)/2*M
 3770 IF A$="e" THEN T=FIX(T)
 3771 IF A$="t" THEN T=FIX(T*1000):E=FIX(E*1000)
 3780 IF ABS(E-T)>10 THEN PRINT "Hibås megoldås,  szåmold újra!":H=H+1:GOSUB 9200:GOTO 3710
 3790 PRINT "A megoldås jó                               ":GOSUB 9250
 3800 X$=INPUT $(1)
 3810 CLS:PRINT:PRINT:PRINT"Akarsz tovåbb szåmolni?  (i/n)"
 3820 X$=INPUT $(1)
 3830 IF X$="i" THEN GOTO 70
 3840 PRINT:PRINT:PRINT"                 SZIA":END
 4000 CLS:PRINT:PRINT"paralelogramma"
 4010 LINE (40,55)-(130,55)
 4020 LINE (40,55)-(90,25)
 4025 LINE (90,25)-(180,25)
 4026 LINE (180,25)-(130,55)
 4027 LINE (110,25)-(110,55)
 4030 LOCATE 8,11:PRINT"a"
 4040 LOCATE 5,22:PRINT"b"
 4050 LOCATE 3,16:PRINT"c"
 4055 LOCATE 5,8:PRINT"d"
 4060 LOCATE 5,15:PRINT"m"
 4065 PRINT:PRINT:PRINT:PRINT
 4070 PRINT"a=";A;" cm"
 4080 PRINT"b=";D;" cm"
 4090 PRINT"c=";A;" cm"
 4091 PRINT"d=";D;" cm"
 4095 M=INT(.86*D)
 4096 PRINT"m=";M;" cm"
 4110 LOCATE 15,1:PRINT"Mennyi a paralelogramma kerÜlete";
 4120 LOCATE 22,1:PRINT"Kérsz segítséget i/n"
 4130 X$=INPUT $(1)
 4150 IF X$="i" THEN PRINT "K=(a+b)*2":S=S+1
 4151 F=F+1:LOCATE 2,28:PRINT"Feladat: ";F:LOCATE 3,28:PRINT"Hiba:    ";H:LOCATE 4,28:PRINT"Segitség:";S
 4160 LOCATE 16,1:SOUND 1527,5 :INPUT E:LOCATE 16,8:PRINT"    cm"
 4170 K=(A+D)*2
 4175 IF A$="t" THEN E=E*1000:K=K*1000
 4180 IF ABS(E-K)>10 THEN PRINT "Hibås megoldås,  szåmold újra!":H=H+1:GOSUB 9200:GOTO 4110
 4190 PRINT "A megoldås jó                               ":GOSUB 9250
 4200 X$=INPUT $(1)
 4201 LOCATE 16,1:PRINT"                                                                               "
 4202 LOCATE 23,1:PRINT"                                     "
 4210 LOCATE 15,1:PRINT"Mennyi a paralelogramma terÜlete";
 4220 LOCATE 22,1:PRINT"Kérsz segítséget i/n"
 4230 X$=INPUT $(1)
 4250 IF X$="i" THEN PRINT "T=a*m":S=S+1
 4251 F=F+1:LOCATE 2,28:PRINT"Feladat: ";F:LOCATE 3,28:PRINT"Hiba:    ";H:LOCATE 4,28:PRINT"Segitség:";S
 4260 LOCATE 16,1:SOUND 1527,5 :INPUT E:LOCATE 16,8:PRINT"    cm²"
 4265 T=A*M
 4270 IF A$="e" THEN T=FIX(T)
 4271 IF A$="t" THEN T=FIX(T*1000):E=FIX(E*1000)
 4280 IF ABS(E-T)>10 THEN PRINT "Hibås megoldås,  szåmold újra!":H=H+1:GOSUB 9200:GOTO 4210
 4290 PRINT "A megoldås jó                               ":GOSUB 9250
 4300 X$=INPUT $(1)
 4310 CLS:PRINT:PRINT:PRINT"Akarsz tovåbb szåmolni?  (i/n)"
 4320 X$=INPUT $(1)
 4330 IF X$="i" THEN GOTO 70
 4340 PRINT:PRINT:PRINT"                 SZIA":END
 4500 CLS:PRINT:PRINT"négyzet"
 4510 LINE (40,75)-(100,75)
 4520 LINE (40,75)-(40,25)
 4525 LINE (100,75)-(100,25)
 4526 LINE (40,25)-(100,25)
 4530 LOCATE 7,5:PRINT"a"
 4540 LOCATE 7,14:PRINT"a"
 4550 LOCATE 3,9:PRINT"a"
 4560 LOCATE 11,9:PRINT"a"
 4565 PRINT:PRINT
 4570 PRINT"a=";A;" cm"
 4610 LOCATE 15,1:PRINT"Mennyi a négyzet kerÜlete";
 4620 LOCATE 22,1:PRINT"Kérsz segítséget i/n"
 4630 X$=INPUT $(1)
 4650 IF X$="i" THEN PRINT "K=4*a":S=S+1
 4651 F=F+1:LOCATE 2,28:PRINT"Feladat: ";F:LOCATE 3,28:PRINT"Hiba:    ";H:LOCATE 4,28:PRINT"Segitség:";S
 4660 LOCATE 16,1:SOUND 1527,5 :INPUT E:LOCATE 16,8:PRINT"    cm"
 4670 K=A*4
 4675 IF A$="t" THEN E=E*1000:K=K*1000
 4680 IF ABS(E-K)>10 THEN PRINT "Hibås megoldås,  szåmold újra!":H=H+1:GOSUB 9200:GOTO 4610
 4690 PRINT "A megoldås jó                               ":GOSUB 9250
 4700 X$=INPUT $(1)
 4701 LOCATE 16,1:PRINT"                                                                               "
 4702 LOCATE 23,1:PRINT"                                     "
 4710 LOCATE 15,1:PRINT"Mennyi a négyzet terÜlete";
 4720 LOCATE 22,1:PRINT"Kérsz segítséget i/n"
 4730 X$=INPUT $(1)
 4750 IF X$="i" THEN PRINT "T=a*a":S=S+1
 4751 F=F+1:LOCATE 2,28:PRINT"Feladat: ";F:LOCATE 3,28:PRINT"Hiba:    ";H:LOCATE 4,28:PRINT"Segitség:";S
 4760 LOCATE 16,1:SOUND 1527,5 :INPUT E:LOCATE 16,8:PRINT"    cm²"
 4765 T=A*A
 4770 IF A$="e" THEN T=FIX(T)
 4771 IF A$="t" THEN T=FIX(T*1000):E=FIX(E*1000)
 4780 IF ABS(E-T)>10 THEN PRINT "Hibås megoldås,  szåmold újra!":H=H+1:GOSUB 9200:GOTO 4710
 4790 PRINT "A megoldås jó                               ":GOSUB 9250
 4800 X$=INPUT $(1)
 4810 CLS:PRINT:PRINT:PRINT"Akarsz tovåbb szåmolni?  (i/n)"
 4820 X$=INPUT $(1)
 4830 IF X$="i" THEN GOTO 70
 4840 PRINT:PRINT:PRINT"                 SZIA":END
 5000 CLS:PRINT:PRINT"téglalap"
 5010 LINE (40,55)-(130,55)
 5020 LINE (40,55)-(40,25)
 5025 LINE (40,25)-(130,25)
 5026 LINE (130,25)-(130,55)
 5030 LOCATE 8,11:PRINT"a"
 5040 LOCATE 5,18:PRINT"b"
 5050 LOCATE 3,11:PRINT"c"
 5060 LOCATE 5,5:PRINT"d"
 5065 PRINT:PRINT:PRINT:PRINT
 5070 PRINT"a=";A;" cm"
 5080 PRINT"b=";B;" cm"
 5090 PRINT"c=";A;" cm"
 5095 PRINT"d=";B;" cm"
 5110 LOCATE 15,1:PRINT"Mennyi a téglalap kerÜlete";
 5120 LOCATE 22,1:PRINT"Kérsz segítséget i/n"
 5130 X$=INPUT $(1)
 5150 IF X$="i" THEN PRINT "K=(a+b)*2":S=S+1
 5151 F=F+1:LOCATE 2,28:PRINT"Feladat: ";F:LOCATE 3,28:PRINT"Hiba:    ";H:LOCATE 4,28:PRINT"Segitség:";S
 5160 LOCATE 16,1:SOUND 1527,5 :INPUT E:LOCATE 16,8:PRINT"    cm"
 5170 K=(A+B)*2
 5175 IF A$="t" THEN E=E*1000:K=K*1000
 5180 IF ABS(E-K)>10 THEN PRINT "Hibås megoldås,  szåmold újra!":H=H+1:GOSUB 9200:GOTO 5110
 5190 PRINT "A megoldås jó                               ":GOSUB 9250
 5200 X$=INPUT $(1)
 5201 LOCATE 16,1:PRINT"                                                                               "
 5202 LOCATE 23,1:PRINT"                                     "
 5210 LOCATE 15,1:PRINT"Mennyi a téglalap terÜlete";
 5220 LOCATE 22,1:PRINT"Kérsz segítséget i/n"
 5230 X$=INPUT $(1)
 5250 IF X$="i" THEN PRINT "T=a*b":S=S+1
 5251 F=F+1:LOCATE 2,28:PRINT"Feladat: ";F:LOCATE 3,28:PRINT"Hiba:    ";H:LOCATE 4,28:PRINT"Segitség:";S
 5260 LOCATE 16,1:SOUND 1527,5 :INPUT E:LOCATE 16,8:PRINT"    cm²"
 5265 T=A*B
 5270 IF A$="e" THEN T=FIX(T)
 5271 IF A$="t" THEN T=FIX(T*1000):E=FIX(E*1000)
 5280 IF ABS(E-T)>10 THEN PRINT "Hibås megoldås,  szåmold újra!":H=H+1:GOSUB 9200:GOTO 5210
 5290 PRINT "A megoldås jó                               ":GOSUB 9250
 5300 X$=INPUT $(1)
 5310 CLS:PRINT:PRINT:PRINT"Akarsz tovåbb szåmolni?  (i/n)"
 5320 X$=INPUT $(1)
 5330 IF X$="i" THEN GOTO 70
 5340 PRINT:PRINT:PRINT"                 SZIA":END
 5500 CLS:PRINT:PRINT"rombusz"
 5510 LINE (40,55)-(80,55)
 5520 LINE (40,55)-(50,25)
 5521 LINE (40,55)-(90,25)
 5522 LINE (50,25)-(80,55)
 5525 LINE (50,25)-(90,25)
 5526 LINE (90,25)-(80,55)
 5527 LINE (65,25)-(65,55)
 5530 LOCATE 8,8:PRINT"a"
 5531 LOCATE 5,8:PRINT"e"
 5532 LOCATE 5,10:PRINT"f"
 5540 LOCATE 5,5:PRINT"a"
 5550 LOCATE 3,9:PRINT"a"
 5555 LOCATE 7,8:PRINT"m"
 5560 LOCATE 5,13:PRINT"a"
 5565 PRINT:PRINT:PRINT:PRINT
 5570 PRINT"a=";A;" cm"
 5575 M=INT(.86*A)
 5595 EA=A:FA=INT(2*M)
 5596 PRINT"e=";EA;" cm"
 5597 PRINT"f=";FA;" cm"
 5600 PRINT"m=";M;" cm"
 5610 LOCATE 15,1:PRINT"Mennyi a rombusz kerÜlete";
 5620 LOCATE 22,1:PRINT"Kérsz segítséget i/n"
 5630 X$=INPUT $(1)
 5650 IF X$="i" THEN PRINT "K=a*4":S=S+1
 5651 F=F+1:LOCATE 2,28:PRINT"Feladat: ";F:LOCATE 3,28:PRINT"Hiba:    ";H:LOCATE 4,28:PRINT"Segitség:";S
 5660 LOCATE 16,1:SOUND 1527,5 :INPUT E:LOCATE 16,8:PRINT"    cm"
 5670 K=A*4
 5675 IF A$="t" THEN E=E*1000:K=K*1000
 5680 IF ABS(E-K)>10 THEN PRINT "Hibås megoldås,  szåmold újra!":H=H+1:GOSUB 9200:GOTO 5610
 5690 PRINT "A megoldås jó                               ":GOSUB 9250
 5700 X$=INPUT $(1)
 5701 LOCATE 16,1:PRINT"                                                                               "
 5702 LOCATE 23,1:PRINT"                                     "
 5710 LOCATE 15,1:PRINT"Mennyi a rombusz terÜlete";
 5720 LOCATE 22,1:PRINT"Kérsz segítséget i/n"
 5730 X$=INPUT $(1)
 5750 IF X$="i" THEN PRINT "T=a*m vagy T=e*f/2":S=S+1
 5751 F=F+1:LOCATE 2,28:PRINT"Feladat: ";F:LOCATE 3,28:PRINT"Hiba:    ";H:LOCATE 4,28:PRINT"Segitség:";S
 5760 LOCATE 16,1:SOUND 1527,5 :INPUT E:LOCATE 16,8:PRINT"    cm²"
 5765 T=A*M
 5770 IF A$="e" THEN T=FIX(T)
 5771 IF A$="t" THEN T=FIX(T*1000):E=FIX(E*1000)
 5780 IF ABS(E-T)>10 THEN PRINT "Hibås megoldås,  szåmold újra!":H=H+1:GOSUB 9200:GOTO 5710
 5790 PRINT "A megoldås jó                               ":GOSUB 9250
 5800 X$=INPUT $(1)
 5810 CLS:PRINT:PRINT:PRINT"Akarsz tovåbb szåmolni?  (i/n)"
 5820 X$=INPUT $(1)
 5830 IF X$="i" THEN GOTO 70
 5840 PRINT:PRINT:PRINT"                 SZIA":END
 6000 CLS:PRINT:PRINT"deltoid"
 6010 LINE (50,90)-(30,45)
 6020 LINE (50,90)-(70,45)
 6025 LINE (30,45)-(50,25)
 6026 LINE (70,45)-(50,25)
 6027 LINE (70,45)-(30,45)
 6028 LINE (50,25)-(50,90)
 6030 LOCATE 8,10:PRINT"a"
 6040 LOCATE 4,9:PRINT"b"
 6050 LOCATE 4,5:PRINT"c"
 6055 LOCATE 8,4:PRINT"d"
 6060 LOCATE 6,6:PRINT"e"
 6066 LOCATE 9,7:PRINT"f"
 6070 LOCATE 8,22: PRINT"a=";A;" cm"
 6080 LOCATE 9,22: PRINT"b=";D;" cm"
 6090 LOCATE 10,22:PRINT"c=";D;" cm"
 6091 LOCATE 11,22:PRINT"d=";A;" cm"
 6095 EA=INT(1.7*D):FA=INT(D/2+SQR(A^2-.85*D^2))
 6100 LOCATE 12,22:PRINT"e=";EA;" cm"
 6105 LOCATE 13,22:PRINT"f=";FA;" cm"
 6110 LOCATE 15,1:PRINT"Mennyi a deltoid kerÜlete";
 6120 LOCATE 22,1:PRINT"Kérsz segítséget i/n"
 6130 X$=INPUT $(1)
 6150 IF X$="i" THEN PRINT "K=(a+b)*2":S=S+1
 6151 F=F+1:LOCATE 2,28:PRINT"Feladat: ";F:LOCATE 3,28:PRINT"Hiba:    ";H:LOCATE 4,28:PRINT"Segitség:";S
 6160 LOCATE 16,1:SOUND 1527,5 :INPUT E:LOCATE 16,8:PRINT"    cm"
 6170 K=(A+D)*2
 6175 IF A$="t" THEN E=E*1000:K=K*1000
 6180 IF ABS(E-K)>10 THEN PRINT "Hibås megoldås,  szåmold újra!":H=H+1:GOSUB 9200:GOTO 6110
 6190 PRINT "A megoldås jó                               ":GOSUB 9250
 6200 X$=INPUT $(1)
 6201 LOCATE 16,1:PRINT"                                                                               "
 6202 LOCATE 23,1:PRINT"                                     "
 6210 LOCATE 15,1:PRINT"Mennyi a deltoid terÜlete";
 6220 LOCATE 22,1:PRINT"Kérsz segítséget i/n"
 6230 X$=INPUT $(1)
 6250 IF X$="i" THEN PRINT "T=e*f/2":S=S+1
 6251 F=F+1:LOCATE 2,28:PRINT"Feladat: ";F:LOCATE 3,28:PRINT"Hiba:    ";H:LOCATE 4,28:PRINT"Segitség:";S
 6260 LOCATE 16,1:SOUND 1527,5 :INPUT E:LOCATE 16,8:PRINT"    cm²"
 6265 T=EA*FA/2
 6270 IF A$="e" THEN T=FIX(T)
 6271 IF A$="t" THEN T=FIX(T*1000):E=FIX(E*1000)
 6280 IF ABS(E-T)>10 THEN PRINT "Hibås megoldås,  szåmold újra!":H=H+1:GOSUB 9200:GOTO 6210
 6290 PRINT "A megoldås jó                               ":GOSUB 9250
 6300 X$=INPUT $(1)
 6310 CLS:PRINT:PRINT:PRINT"Akarsz tovåbb szåmolni?  (i/n)"
 6320 X$=INPUT $(1)
 6330 IF X$="i" THEN GOTO 70
 6340 PRINT:PRINT:PRINT"                 SZIA":END
 6500 CLS:PRINT:PRINT"kör"
 6510 CIRCLE (50,50),20
 6520 PSET (50,50)
 6525 LINE (50,50)-(70,50)
 6530 LOCATE 8,11:PRINT"r"
 6565 PRINT:PRINT:PRINT:PRINT
 6570 PRINT"r=";D;" cm"
 6575 R=D
 6610 LOCATE 15,1:PRINT"Mennyi a kör kerÜlete";
 6620 LOCATE 22,1:PRINT"Kérsz segítséget i/n"
 6630 X$=INPUT $(1)
 6650 IF X$="i" THEN PRINT "K=2*r*π (π=3.14)":S=S+1
 6651 F=F+1:LOCATE 2,28:PRINT"Feladat: ";F:LOCATE 3,28:PRINT"Hiba:    ";H:LOCATE 4,28:PRINT"Segitség:";S
 6660 LOCATE 16,1:SOUND 1527,5 :INPUT E:LOCATE 16,8:PRINT"         cm"
 6670 K=2*R*3.14
 6675 IF A$="t" THEN E=E*1000:K=K*1000
 6680 IF ABS(E-K)>10 THEN PRINT "Hibås megoldås,  szåmold újra!":H=H+1:GOSUB 9200:GOTO 6610
 6690 PRINT "A megoldås jó                               ":GOSUB 9250
 6700 X$=INPUT $(1)
 6701 LOCATE 16,1:PRINT"                                                                               "
 6702 LOCATE 23,1:PRINT"                                     "
 6710 LOCATE 15,1:PRINT"Mennyi a kör terÜlete";
 6720 LOCATE 22,1:PRINT"Kérsz segítséget i/n"
 6730 X$=INPUT $(1)
 6750 IF X$="i" THEN PRINT "T=r*r*π (π=3.14) ":S=S+1
 6751 F=F+1:LOCATE 2,28:PRINT"Feladat: ";F:LOCATE 3,28:PRINT"Hiba:    ";H:LOCATE 4,28:PRINT"Segitség:";S
 6760 LOCATE 16,1:SOUND 1527,5 :INPUT E:LOCATE 16,8:PRINT"         cm²"
 6765 T=R*R*3.14
 6770 IF A$="e" THEN T=FIX(T)
 6771 IF A$="t" THEN T=FIX(T*1000):E=FIX(E*1000)
 6780 IF ABS(E-T)>10 THEN PRINT "Hibås megoldås,  szåmold újra!":H=H+1:GOSUB 9200:GOTO 6710
 6790 PRINT "A megoldås jó                               ":GOSUB 9250
 6800 X$=INPUT $(1)
 6810 CLS:PRINT:PRINT:PRINT"Akarsz tovåbb szåmolni?  (i/n)"
 6820 X$=INPUT $(1)
 6830 IF X$="i" THEN GOTO 70
 6840 PRINT:PRINT:PRINT"                 SZIA":END
 7000 CLS:PRINT:PRINT"szabålyos ötszög"
 7010 LINE (40,70)-(80,70)
 7011 LINE (40,70)-(60,47)
 7012 LINE (80,70)-(60,47)
 7013 LINE (28,40)-(60,47)
 7014 LINE (92,40)-(60,47)
 7015 LINE (60,20)-(60,47)
 7020 LINE (40,70)-(28,40)
 7025 LINE (80,70)-(92,40)
 7026 LINE (28,40)-(60,20)
 7027 LINE (92,40)-(60,20)
 7030 LOCATE 4,12:PRINT"a"
 7031 LOCATE 8,4:PRINT"a"
 7040 LOCATE 8,12:PRINT"a"
 7050 LOCATE 4,5:PRINT"a"
 7051 LOCATE 5,9:PRINT"m"
 7060 LOCATE 10,8:PRINT"a"
 7065 PRINT
 7066 A=A:M=INT(A/1.45)
 7070 PRINT"a=";A;" cm"
 7080 PRINT"m=";M;" cm"
 7110 LOCATE 15,1:PRINT"Mennyi az ötszög kerÜlete";
 7120 LOCATE 22,1:PRINT"Kérsz segítséget i/n"
 7130 X$=INPUT $(1)
 7150 IF X$="i" THEN PRINT "K=a*5":S=S+1
 7151 F=F+1:LOCATE 2,28:PRINT"Feladat: ";F:LOCATE 3,28:PRINT"Hiba:    ";H:LOCATE 4,28:PRINT"Segitség:";S
 7160 LOCATE 16,1:SOUND 1527,5 :INPUT E:LOCATE 16,8:PRINT"    cm"
 7170 K=A*5
 7175 IF A$="t" THEN E=E*1000:K=K*1000
 7180 IF ABS(E-K)>10 THEN PRINT "Hibås megoldås,  szåmold újra!":H=H+1:GOSUB 9200:GOTO 7110
 7190 PRINT "A megoldås jó                               ":GOSUB 9250
 7200 X$=INPUT $(1)
 7201 LOCATE 16,1:PRINT"                                                                               "
 7202 LOCATE 23,1:PRINT"                                     "
 7210 LOCATE 15,1:PRINT"Mennyi az ötszög terÜlete";
 7220 LOCATE 22,1:PRINT"Kérsz segítséget i/n"
 7230 X$=INPUT $(1)
 7250 IF X$="i" THEN PRINT "T=a*m/2*5":S=S+1
 7251 F=F+1:LOCATE 2,28:PRINT"Feladat: ";F:LOCATE 3,28:PRINT"Hiba:    ";H:LOCATE 4,28:PRINT"Segitség:";S
 7260 LOCATE 16,1:SOUND 1527,5 :INPUT E:LOCATE 16,8:PRINT"    cm²"
 7265 T=A*M/2*5
 7270 IF A$="e" THEN T=FIX(T)
 7271 IF A$="t" THEN T=FIX(T*1000):E=FIX(E*1000)
 7280 IF ABS(E-T)>10 THEN PRINT "Hibås megoldås,  szåmold újra!":H=H+1:GOSUB 9200:GOTO 7210
 7290 PRINT "A megoldås jó                               ":GOSUB 9250
 7300 X$=INPUT $(1)
 7301 LOCATE 16,1:PRINT"                                                                               "
 7310 CLS:PRINT:PRINT:PRINT"Akarsz tovåbb szåmolni?  (i/n)"
 7320 X$=INPUT $(1)
 7330 IF X$="i" THEN GOTO 70
 7340 PRINT:PRINT:PRINT"                 SZIA":END
 7500 CLS:PRINT:PRINT"szabålyos hatszög"
 7510 LINE (50,70)-(80,70)
 7511 LINE (65,50)-(80,70)
 7512 LINE (65,50)-(50,30)
 7513 LINE (65,50)-(35,50)
 7514 LINE (65,50)-(95,50)
 7515 LINE (65,50)-(50,70)
 7516 LINE (95,50)-(80,30)
 7517 LINE (50,30)-(80,30)
 7518 LINE (65,50)-(80,30)
 7520 LINE (50,70)-(35,50)
 7525 LINE (80,70)-(95,50)
 7526 LINE (35,50)-(50,30)
 7530 LOCATE 8,4:PRINT"a"
 7535 LOCATE 8,13:PRINT"a"
 7540 LOCATE 5,13:PRINT"a"
 7545 LOCATE 5,4:PRINT"a"
 7550 LOCATE 3,9:PRINT"a"
 7555 LOCATE 6,11:PRINT"m"
 7560 LOCATE 10,9:PRINT"a"
 7565 PRINT
 7570 PRINT"a=";A;" cm"
 7595 M=INT(A*.85)
 7600 PRINT"m=";M;" cm"
 7610 LOCATE 15,1:PRINT"Mennyi a hatszög kerÜlete";
 7620 LOCATE 22,1:PRINT"Kérsz segítséget i/n"
 7630 X$=INPUT $(1)
 7650 IF X$="i" THEN PRINT "K=a*6":S=S+1
 7651 F=F+1:LOCATE 2,28:PRINT"Feladat: ";F:LOCATE 3,28:PRINT"Hiba:    ";H:LOCATE 4,28:PRINT"Segitség:";S
 7660 LOCATE 16,1:SOUND 1527,5 :INPUT E:LOCATE 16,8:PRINT"    cm"
 7670 K=A*6
 7675 IF A$="t" THEN E=E*1000:K=K*1000
 7680 IF ABS(E-K)>10 THEN PRINT "Hibås megoldås,  szåmold újra!":H=H+1:GOSUB 9200:GOTO 7610
 7690 PRINT "A megoldås jó                               ":GOSUB 9250
 7700 X$=INPUT $(1)
 7701 LOCATE 16,1:PRINT"                                                                               "
 7702 LOCATE 23,1:PRINT"                                     "
 7710 LOCATE 15,1:PRINT"Mennyi a hatszög terÜlete";
 7720 LOCATE 22,1:PRINT"Kérsz segítséget i/n"
 7730 X$=INPUT $(1)
 7750 IF X$="i" THEN PRINT "T=a*m*3":S=S+1
 7751 F=F+1:LOCATE 2,28:PRINT"Feladat: ";F:LOCATE 3,28:PRINT"Hiba:    ";H:LOCATE 4,28:PRINT"Segitség:";S
 7760 LOCATE 16,1:SOUND 1527,5 :INPUT E:LOCATE 16,8:PRINT"    cm²"
 7765 T=A*M*3
 7770 IF A$="e" THEN T=FIX(T)
 7771 IF A$="t" THEN T=FIX(T*1000):E=FIX(E*1000)
 7780 IF ABS(E-T)>10 THEN PRINT "Hibås megoldås,  szåmold újra!":H=H+1:GOSUB 9200:GOTO 7710
 7790 PRINT "A megoldås jó                               ":GOSUB 9250
 7800 X$=INPUT $(1)
 7810 CLS:PRINT:PRINT:PRINT"Akarsz tovåbb szåmolni?  (i/n)"
 7820 X$=INPUT $(1)
 7830 IF X$="i" THEN GOTO 70
 7840 PRINT:PRINT:PRINT"                 SZIA":END
 8999 STOP
 9000 CLS
 9010 PRINT"Ez a program a síkidomok kerÜletének és                                         terÜletének kiszåmítåsåt  gyakoroltatja."
 9020 PRINT:PRINT"Neked csak a végeredményt kell a billen-                                        tyÜzet segítségével beírnod."
 9025 PRINT:PRINT"A vålaszt a csipogò hang utån vårja  a                                          gép. Ne felejtsd el utåna az   ENTER                                            gombot megnyomni. Tizedes vesszö helyett
 9035 PRINT:PRINT"tizedes pontot hasznålj!"
 9040 PRINT:PRINT"TÖrtszåmok esetén két tizedes pontossåg-                                        gal szåmolj! A gép szåmolja hånyszor té-                                        vedtél, hånyszor kértél  segítséget."
 9060 PRINT:PRINT"              Jò munkåt!"
 9070 X$=INPUT $(1)
 9080 CLS
 9090 RETURN
 9200 FOR I=1 TO 8
 9210 SOUND 783,2:SOUND 659,2
 9220 NEXT I
 9230 RETURN
 9250 FOR I=146 TO 1174 STEP 50
 9255 SOUND I,1
 9260 NEXT I
 9270 RETURN
