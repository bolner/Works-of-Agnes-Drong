    5 CLS:GOSUB 100
   10 CLS:Z=VAL(MID$(TIME$,7,2))
   12 RANDOMIZE Z
   14 A=(INT(RND(1)*20)-6):IF A=0 THEN GOTO 14
   16 B=(INT(RND(1)*12)-6):IF B=0 THEN GOTO 16
   18 C=(INT(RND(1)*12)-6):IF C=0 THEN GOTO 18
   20 D=(INT(RND(1)*12)-6):IF D=0 THEN GOTO 20
   22 X=(INT(RND(1)*12)-6):IF X=0 THEN GOTO 22
   24 V=A*X+B
   30 PRINT A"*x + "B" = "V
   32 INPUT"az eredmény:";Y
   34 IF Y<>X THEN PRINT "nem jó":GOTO 32
   36 PRINT:PRINT:PRINT:PRINT:GOTO 14
  100 LOCATE 10,10:PRINT"EGYENLETEK"
  110 A$=INPUT $(1)
  120 CLS:LOCATE 5,1:PRINT"Ez a program egyenletek megoldåsåt el-  lenÖrzi."
  130 LOCATE 10,1:PRINT"Neked csak az egyenlet gyÖkét kell beír-nod. Utåna nyomd meg az ENTER gombot!"
  140 LOCATE 15,10:PRINT"Jó MUNKÅT!"
  145 A$=INPUT $(1)
  150 RETURN
