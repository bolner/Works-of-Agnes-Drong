    5 H=0:F=0
   10 CLS
   12 F=0:H=0
   20 SCREEN 1
   30 KEY OFF
   40 LOCATE 11,8:PRINT"Négyzet, téglalap"
   50 X$=INPUT $(1)
   60 A=VAL(RIGHT$(TIME$,2))
   70 RANDOMIZE A
   80 CLS: X=INT(RND*8)
   85 LOCATE 1,25:PRINT"feladat:";F:LOCATE 2,25:PRINT"hiba   :";H:X$=INPUT $(1)
   90 IF X=0 THEN GOTO 100
   91 IF X=1 THEN GOTO 200
   92 IF X=2 THEN GOTO 300
   93 IF X=3 THEN GOTO 400
   94 IF X=4 THEN GOTO 500
   95 IF X=5 THEN GOTO 600
   96 IF X=6 THEN GOTO 700
   97 IF X=7 THEN GOTO 800
  100 CLS
  110 LOCATE 5,2:PRINT"Mennyi a négyzet kerÜlete, ha:"
  120 A=INT(RND*20)
  125 IF A=0 THEN GOTO 120
  130 PRINT"   a=";A;"   cm"
  140 F=F+1: LOCATE 10,3:INPUT V
  150 K=4*A
  160 IF V=K THEN LOCATE 10,3:PRINT"K=";K;"  cm":LOCATE 12,1:PRINT"                                       ": SOUND 945,5:X$=INPUT $(1):GOTO 80
  170 PRINT"A megoldås nem jó, szåmold újra!":H=H+1
  180 LOCATE 20,2:PRINT"Kérsz segítséget?  (i/n) ";
  181 X$=INPUT $(1)
  182 IF X$="i" THEN PRINT"K=4·a"
  190 GOTO 140
  200 CLS
  210 LOCATE 5,2:PRINT"Mennyi a négyzet terÜlete, ha:"
  220 A=INT(RND*20)
  225 IF A=0 THEN GOTO 220
  230 PRINT"   a=";A;"   cm"
  240 F=F+1:  LOCATE 10,3:INPUT V
  250 T=A*A
  260 IF V=T THEN LOCATE 10,3:PRINT"T=";T;"  cm²":LOCATE 11,1:PRINT"                                       ":SOUND 945,5:X$=INPUT $(1):GOTO 80
  270 PRINT"A megoldås nem jó, szåmold újra!":H=H+1
  280 LOCATE 20,2:PRINT"Kérsz segítséget?  (i/n) ";
  281 X$=INPUT $(1)
  282 IF X$="i" THEN PRINT"T=a·a"
  290 GOTO 240
  300 CLS
  310 LOCATE 5,2:PRINT"Mennyi a négyzet oldala ha a kerÜlete:"
  320 A=INT(RND*20)
  325 IF A=0 THEN GOTO 320
  330 PRINT"   K=";4*A;"   cm"
  340 F=F+1: LOCATE 10,3:INPUT V
  360 IF V=A THEN LOCATE 10,3:PRINT"a=";A;"  cm":LOCATE 11,1:PRINT"                                        ":SOUND 945,5:X$=INPUT $(1):GOTO 80
  370 PRINT"A megoldås nem jó, szåmold újra!":H=H+1
  380 LOCATE 20,2:PRINT"Kérsz segítséget?  (i/n) ";
  381 X$=INPUT $(1)
  382 IF X$="i" THEN PRINT"a=K:4"
  390 GOTO 340
  400 CLS
  410 LOCATE 5,2:PRINT"Mennyi a négyzet oldala ha a terÜlete:"
  420 A=INT(RND*11)
  425 IF A=0 THEN GOTO 420
  430 PRINT"   T=";A*A;"   cm²"
  440 F=F+1: LOCATE 10,3:INPUT V
  460 IF V=A THEN LOCATE 10,3:PRINT"a=";A;"  cm":LOCATE 11,1:PRINT"                                        ":SOUND 945,5:X$=INPUT $(1):GOTO 80
  470 PRINT"A megoldås nem jó, szåmold újra!":H=H+1
  480 LOCATE 20,2:PRINT"Kérsz segítséget?  (i/n) ";
  481 X$=INPUT $(1)
  482 IF X$="i" THEN PRINT"T=a·a"
  490 GOTO 440
  500 CLS
  510 LOCATE 5,2:PRINT"Mennyi a téglalap kerÜlete, ha:"
  520 A=INT(RND*20)
  525 B=INT(RND*20)
  530 PRINT"   a=";A;"   cm"
  531  IF A=0 THEN GOTO 530
  535 PRINT"   b=";B;"   cm"
  536  IF B=0 THEN GOTO 535
  540 F=F+1: LOCATE 10,3:INPUT V
  550 K=(A+B)*2
  560 IF V=K THEN LOCATE 10,3:PRINT"K=";K;"  cm":LOCATE 11,1:PRINT"                                        ":SOUND 945,5:X$=INPUT $(1):GOTO 80
  570 PRINT"A megoldås nem jó, szåmold újra!":H=H+1
  580 LOCATE 20,2:PRINT"Kérsz segítséget?  (i/n) ";
  581 X$=INPUT $(1)
  582 IF X$="i" THEN PRINT"K=(a+b)·2"
  590 GOTO 540
  600 CLS
  610 LOCATE 5,2:PRINT"Mennyi a téglalap terÜlete, ha:"
  620 A=INT(RND*20)
  625 B=INT(RND*20)
  630 PRINT"   a=";A;"   cm"
  631  IF A=0 THEN GOTO 630
  635 PRINT"   b=";B;"   cm"
  636  IF B=0 THEN GOTO 635
  640 F=F+1: LOCATE 10,3:INPUT V
  650 T=A*B
  660 IF V=T THEN LOCATE 10,3:PRINT"T=";T;"  cm²":LOCATE 11,1:PRINT"                                        ":SOUND 945,5:X$=INPUT $(1):GOTO 80
  670 PRINT"A megoldås nem jó, szåmold újra!":H=H+1
  680 LOCATE 20,2:PRINT"Kérsz segítséget?  (i/n) ";
  681 X$=INPUT $(1)
  682 IF X$="i" THEN PRINT"T=a·b"
  690 GOTO 640
  700 CLS
  710 LOCATE 5,2:PRINT"Mennyi a téglalap oldala ha:"
  720 A=INT(RND*20)
  725 B=INT(RND*20)
  730 PRINT"   a=";A;"   cm"
  731  IF A=0 THEN GOTO 730
  735 PRINT"   K=";(A+B)*2;"   cm"
  736  IF B=0 THEN GOTO 735
  740 F=F+1: LOCATE 10,3:INPUT V
  760 IF V=B THEN LOCATE 10,3:PRINT"b=";B;"  cm":LOCATE 11,1:PRINT"                                         ":SOUND 945,5:X$=INPUT $(1):GOTO 80
  770 PRINT"A megoldås nem jó, szåmold újra!":H=H+1
  780 LOCATE 20,2:PRINT"Kérsz segítséget?  (i/n) ";
  781 X$=INPUT $(1)
  782 IF X$="i" THEN PRINT"b=K:2-a"
  790 GOTO 740
  800 CLS
  810 LOCATE 5,2:PRINT"Mennyi a téglalap oldala ha:"
  820 A=INT(RND*20)
  825 B=INT(RND*20)
  830 PRINT"   a=";A;"   cm"
  831  IF A=0 THEN GOTO 830
  835 PRINT"   T=";A*B;"   cm²"
  836  IF B=0 THEN GOTO 835
  840 F=F+1: LOCATE 10,3:INPUT V
  860 IF V=B THEN LOCATE 10,3:PRINT"b=";B;"  cm":LOCATE 11,1:PRINT"                                         ":SOUND 945,5:X$=INPUT $(1):GOTO 80
  870 PRINT"A megoldås nem jó, szåmold újra!":H=H+1
  880 LOCATE 20,2:PRINT"Kérsz segítséget?  (i/n) ";
  881 X$=INPUT $(1)
  882 IF X$="i" THEN PRINT"b=T:a"
  890 GOTO 840
