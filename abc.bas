    6 F=0:H=0:T=64
   10 KEY OFF
   15 CLS
   16 GOSUB 2500
   20 X=VAL(RIGHT$(TIME$,2))
   30 RANDOMIZE X
   40 CLS:V=INT(RND*2)+1
   45 GOSUB 3500
   50 ON V GOTO 500,1500
  500 A=INT(RND*12)+1
  510 B=INT(RND*12)+1
  520 PRINT:PRINT:PRINT"Mennyi                                          ";A;"+";B;"=";
  530 INPUT C :F=F+1
  540 D=A+B
  550 IF C=D THEN PRINT:PRINT"jó megoldås!                            ":GOSUB  2000:GOTO 40
  560 PRINT:PRINT"Hibås, szåmold újra!":H=H+1:GOSUB 3000:GOTO 530
 1500 A=INT(RND*12)+1
 1510 B=INT(RND*12)+1
 1515 E=A+B
 1520 PRINT:PRINT:PRINT"Mennyi                                          ";E;"-";B;"=";
 1530 INPUT C
 1550 IF C=A THEN PRINT:PRINT"jó megoldås!":GOSUB  2000:GOTO 40
 1560 PRINT:PRINT"Hibås, szåmold ujra!":H=H+1:GOSUB 3000:GOTO 1530
 2000 FOR I=293 TO 1174 STEP 20
 2010 SOUND I,1
 2020 NEXT I
 2030 RETURN
 2500 LOCATE 10,15:PRINT"FEJSZÅMOLÅS"
 2510 A$=INPUT $(1)
 2520 CLS
 2530 PRINT:PRINT:PRINT"Ez a program az Összeadåst,   kivonåst                                          gyakoroltatja. Neked csak az eredményt                                          kell beírnod"
 2540 PRINT:PRINT"   Utåna nyomd meg az ENTER gombot!"
 2545 PRINT:PRINT"Legfeljebb 16 hibåt kÖvethetsz el!"
 2550 PRINT:PRINT"  Vigyåzz a gép szåmolja hånyszor hibåz-"
 2560 PRINT:PRINT"tål! Ha kezdeni akarsz nyomj meg egy                                            gombot!"
 2570 PRINT:PRINT:PRINT"             Jó MUNKAT!"
 2575 A$=INPUT $(1)
 2580 RETURN
 3000 FOR I=1 TO 10
 3010 SOUND 783.99,3:SOUND 659.26,3
 3020 NEXT I
 3500 LINE (10,170)-(10,188)
 3510 LINE (10,170)-(304,170)
 3519 LINE (64,170)-(64,188)
 3520 LINE (10,188)-(304,188)
 3521 T=64+H*16
 3522 LINE (T,170)-(T,188)
 3523 IF T>64 THEN PAINT (T-4,175)
 3524 IF T=304 THEN CLS:PRINT F;" feladatot oldottål meg":GOTO 3550
 3530 LINE (304,170)-(304,188)
 3531 LOCATE 23,3:PRINT"HIBAK":LOCATE 1,1
 3540 RETURN
 3550 PRINT"Akarod újra kezdeni? y/n":INPUT X$
 3551 IF X$<>"y" AND X$<>"n" THEN GOTO 3550
 3552 IF X$="y" THEN GOTO 6
