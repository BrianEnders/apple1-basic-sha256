HIMEM = 16384
1 DIM v$(80), w$(128), x$(128), y$(128), z$(128)
10 PRINT "LOADING...":PRINT
20 v$ = "0123456789ABCDEF0000000100100011010001010110011110001001101010111100110111101111"
         
30 w$ = "428A2F9871374491B5C0FBCFE9B5DBA53956C25B59F111F1923F82A4AB1C5ED5D807AA9812835B01243185BE550C7DC372BE5D74"
31 w$(105) = "80DEB1FE9BDC06A7C19BF174"
40 x$ = "E49B69C1EFBE47860FC19DC6240CA1CC2DE92C6F4A7484AA5CB0A9DC76F988DA983E5152A831C66DB00327C8BF597FC7C6E00BF3"
41 x$(105) = "D5A7914706CA635114292967"
50 y$ = "27B70A852E1B21384D2C6DFC53380D13650A7354766A0ABB81C2C92E92722C85A2BFE8A1A81A664BC24B8B70C76C51A3D192E819"
51 y$(105) = "D6990624F40E3585106AA070"
60 z$ = "19A4C1161E376C082748774C34B0BCB5391C0CB34ED8AA4A5B9CCA4F682E6FF3748F82EE78A5636F84C878148CC7020890BEFFFA"
61 z$(105) = "A4506CEBBEF9A3F7C67178F2"

80 DIM A$(128),B$(128),C$(128)
81 DIM D$(128),E$(128),F$(128),G$(128)

82 D$ = "74657374800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
83 D$(105) = "000000000000000000000020"

91 DIM H$(64),I$(64),J$(64),K$(64)
92 DIM L$(64),M$(64),N$(64),O$(64),S$(64)
93 DIM P$(96),Q$(8),R$(32),T$(32)
94 PRINT "STARTING CHUNK EXPANSION...":PRINT
100 FOR V = 17 to 64

101 IF V - 16 > 16 THEN GOTO 103: Q$(1) = D$((v - 16) * 8 - 7, (v - 16) * 8): GOSUB 7999: GOTO 108
103 IF V - 16 > 32 THEN GOTO 106: Q$(1) = E$((v - 32) * 8 - 7, (v - 32) * 8): GOSUB 7999: GOTO 108
106 Q$(1) = F$((v - 48) * 8 - 7, (v - 48) * 8): GOSUB 7999
108 L$(1) = R$

109 IF v - 7 > 16 THEN GOTO 111: Q$(1) = D$((v - 7) * 8 - 7, (v - 7) * 8): GOSUB 7999: GOTO 118
111 IF v - 7 > 32 THEN GOTO 113: Q$(1) = E$((v - 23) * 8 - 7, (v - 23) * 8): GOSUB 7999: GOTO 118
113 IF v - 7 > 48 THEN GOTO 116: Q$(1) = F$((v - 39) * 8 - 7, (v - 39) * 8): GOSUB 7999: GOTO 118
116 Q$(1) = G$((v - 55) * 8 - 7, (v - 55) * 8): GOSUB 7999: GOTO 118
118 L$(33) = R$

119 IF v - 15 > 16 THEN GOTO 121: Q$(1) = D$((v - 15) * 8 - 7, (v - 15) * 8): GOSUB 7999: GOTO 128
121 IF v - 15 > 32 THEN GOTO 123: Q$(1) = E$((v - 31) * 8 - 7, (v - 31) * 8): GOSUB 7999: GOTO 128
123 IF v - 15 > 48 THEN GOTO 126: Q$(1) = F$((v - 47) * 8 - 7, (v - 47) * 8): GOSUB 7999: GOTO 128
126 Q$(1) = G$((v - 63) * 8 - 7, (v - 63) * 8): GOSUB 7999: GOTO 128
128 T$(1) = R$: GOSUB 1000

129 IF v - 2 > 16 THEN GOTO 131: Q$(1) = D$((v - 2) * 8 - 7, (v - 2) * 8): GOSUB 7999: GOTO 138
131 IF v - 2 > 32 THEN GOTO 133: Q$(1) = E$((v - 18) * 8 - 7, (v - 18) * 8): GOSUB 7999: GOTO 138
133 IF v - 2 > 48 THEN GOTO 136: Q$(1) = F$((v - 34) * 8 - 7, (v - 34) * 8): GOSUB 7999: GOTO 138
136 Q$(1) = G$((v - 50) * 8 - 7, (v - 50) * 8): GOSUB 7999: GOTO 138
138 T$(1) = R$: GOSUB 1100

139 GOSUB 1200

140 IF v > 32 THEN GOTO 142: E$((v - 16) * 8 - 7) = Q$: GOTO 147
142 IF v > 48 THEN GOTO 145: F$((v - 32) * 8 - 7) = Q$: GOTO 147
145 G$((v - 48) * 8 - 7) = Q$: GOTO 147

147 REM PRINT V;"*"
148 NEXT V

200 REM DO MORE
201 FOR v = 1 TO 64

202 IF v = 1 THEN GOSUB 8050
205 PRINT "START ROUND "; V; " : ";
210 IF v > 16 THEN GOTO 213: Q$(1) = D$((v) * 8 - 7, (v) * 8): GOSUB 7999: GOTO 222
213 IF v > 32 THEN GOTO 216: Q$(1) = E$((v - 16) * 8 - 7, (v - 16) * 8): GOSUB 7999: GOTO 222
216 IF v > 48 THEN GOTO 219: Q$(1) = F$((v - 32) * 8 - 7, (v - 32) * 8): GOSUB 7999: GOTO 222
219 Q$(1) = G$((v - 48) * 8 - 7, (v - 48) * 8): GOSUB 7999: GOTO 222
222 H$(1) = R$:PRINT "*";

225 IF v > 16 THEN GOTO 228: Q$(1) = W$((v) * 8 - 7, (v) * 8): GOSUB 7999: GOTO 237
228 IF v > 32 THEN GOTO 231: Q$(1) = X$((v - 16) * 8 - 7, (v - 16) * 8): GOSUB 7999: GOTO 237
231 IF v > 48 THEN GOTO 234: Q$(1) = Y$((v - 32) * 8 - 7, (v - 32) * 8): GOSUB 7999: GOTO 237
234 Q$(1) = Z$((v - 48) * 8 - 7, (v - 48) * 8): GOSUB 7999: GOTO 237
237 H$(33) = R$:PRINT "*";

240 GOSUB 7000:PRINT "*";
241 GOSUB 7010:PRINT "*";
242 GOSUB 7100:PRINT "*";
243 GOSUB 7026:PRINT "*";

244 GOSUB 7200:PRINT "*";
245 GOSUB 7300:PRINT "*";
246 GOSUB 7400:PRINT "*"

247 GOSUB 7500

299 NEXT v

300 E$ = A$
301 F$ = B$
302 GOSUB 8050

303 W$=A$:X$=B$:FOR m = 0 TO 3
304 r = 0
305 FOR i = 32 TO 1 STEP -1
306 l = r
307 IF W$(i + (m * 32), i + (m * 32)) = "1" THEN l = l + 1
308 IF E$(i + (m * 32), i + (m * 32)) = "1" THEN l = l + 1
309 c = l MOD 2
310 r = l / 2
311 IF c = 1 THEN R$(33 - i) = "1"
312 IF c = 0 THEN R$(33 - i) = "0"
313 NEXT i
314 FOR i = 1 TO 32
315 A$(i + (m * 32)) = R$(33 - i, 33 - i)
316 NEXT i

317 R$ = A$((m * 32) + 1, (m * 32) + 32): GOSUB 8008
318 G$((m * 8) + 1) = Q$

319 r = 0
320 FOR i = 32 TO 1 STEP -1
321 l = r
322 IF X$(i + (m * 32), i + (m * 32)) = "1" THEN l = l + 1
323 IF F$(i + (m * 32), i + (m * 32)) = "1" THEN l = l + 1
324 c = l MOD 2
325 r = l / 2
326 IF c = 1 THEN R$(33 - i) = "1"
327 IF c = 0 THEN R$(33 - i) = "0"
328 NEXT i
329 FOR i = 1 TO 32
330 B$(i + (m * 32)) = R$(33 - i, 33 - i)
331 NEXT i

332 R$ = B$((m * 32) + 1, (m * 32) + 32): GOSUB 8008
333 D$((m * 8) + 1) = Q$

334 NEXT m
335 PRINT "FINAL SHA256 HASH:":PRINT G$(1, 32)
336 PRINT D$(1, 32)
400 END

1000 REM GETS0:
1001 P$(1) = T$(26, 32): P$(8) =T$(1, 25)
1002 P$(33) = T$(15, 32): P$(51) =T$(1, 14)
1003 P$(65) = "000": P$(68) = T$(1, 29)
1004 FOR i = 1 TO 32
1005 l = 0
1006 IF P$(i, I) = "1" THEN l = l + 1
1007 IF P$(i + 32, i + 32) = "1" THEN l = l + 1
1008 IF P$(i + 64, i + 64) = "1" THEN l = l + 1
1009 IF l = 0 OR l = 2 THEN T$(i) = "0"
1010 IF l = 1 OR l = 3 THEN T$(i) = "1"
1011 NEXT i
1012 S$(1) = T$
1013 REM R$ = T$: GOSUB 8008: PRINT Q$
1014 RETURN

1100 REM GETS1:
1101 P$(1) = T$(16, 32): P$(18) = T$(1, 15)
1102 P$(33) = T$(14, 32): P$(52) = T$(1, 13)
1103 P$(65) = "0000000000": P$(75) = T$(1, 22)
1104 FOR i = 1 TO 32
1105 l = 0
1106 IF P$(i, I) = "1" THEN l = l + 1
1107 IF P$(i + 32, i + 32) = "1" THEN l = l + 1
1108 IF P$(i + 64, i + 64) = "1" THEN l = l + 1
1109 IF l = 0 OR l = 2 THEN T$(i) = "0"
1110 IF l = 1 OR l = 3 THEN T$(i) = "1"
1111 NEXT i
1112 S$(33) = T$
1113 REM R$ = T$: GOSUB 8008: PRINT Q$
1114 RETURN

1200 REM ADDALL1:
1201 r = 0
1202 FOR i = 32 TO 1 STEP -1
1203 l = r
1204 IF S$(i, I) = "1" THEN l = l + 1
1205 IF S$(i+32, I+32) = "1" THEN l = l + 1
1206 IF L$(i, I) = "1" THEN l = l + 1
1207 IF L$(i+32, I+32) = "1" THEN l = l + 1
1208 c = l MOD 2
1209 r = l / 2
1210 IF c = 1 THEN R$(33 - i) = "1"
1211 IF c = 0 THEN R$(33 - i) = "0"
1212 NEXT i
1213 FOR i = 1 TO 32
1214 T$(i) = R$(33 - i, 33 - i)
1215 NEXT i
1216 R$ = T$: GOSUB 8008: PRINT Q$;"  ";
1217 RETURN

7000 rem get maj
7001 For i = 1 to 32
7002 l = 0
7003 if a$(i,i) = "1" then l = l +1
7004 if a$(i+32,i+32) = "1" then l = l +1
7005 if a$(i+64,i+64) = "1" then l = l +1
7006 j$(i) = "0"
7007 if l > 1 then j$(i)="1"
7008 next i
7009 return

7010 rem shift e
7011 P$(1) = b$(27,32):P$(7)=b$(1,26)
7012 P$(33) = b$(22,32):P$(44)=b$(1,21)
7013 P$(65) = b$(8,32):P$(90)=b$(1,7)
7014 for i=1 to 32
7015 l = 0
7016 if P$(i,i) = "1" then l = l +1
7017 if P$(i+32,i+32) = "1" then l = l +1
7018 if P$(i+64,i+64) = "1" then l = l +1
7019 if l = 0 then J$(i+32)="0"
7020 if l = 1 then J$(i+32)="1"
7021 if l = 2 then J$(i+32)="0"
7022 if l = 3 then J$(i+32)="1"
7023 next i
7025 return

7026 rem shift a
7027 P$(1) = a$(31,32):P$(3)=a$(1,30)
7028 P$(33) = a$(20,32):P$(46)=a$(1,19)
7029 P$(65) = a$(11,32):P$(87)=a$(1,10)
7030 for i=1 to 32
7031 l = 0
7032 if P$(i,i) = "1" then l = l +1
7033 if P$(i+32,i+32) = "1" then l = l +1
7034 if P$(i+64,i+64) = "1" then l = l +1
7035 if l = 0 then K$(i+32)="0"
7036 if l = 1 then K$(i+32)="1"
7037 if l = 2 then K$(i+32)="0"
7038 if l = 3 then K$(i+32)="1"
7039 next i
7041 return

7100 rem ch
7101 For i = 1 to 32
7102 l = 0
7103 if b$(i,i) = "0" then K$(i)=b$(i+64,i+64)
7104 if b$(i,i) = "1" then K$(i)=b$(i+32,i+32)
7108 next i
7109 return

7200 rem add1 H H
7201 r = 0
7202 for i = 32 to 1 step -1
7203 l = r
7204 if H$(i,i) = "1" then l=l+1
7205 if H$(i+32,i+32) = "1" then l=l+1
7206 if b$(i+96,i+96) = "1" then l=l+1
7207 if K$(i,i) = "1" then l=l+1
7208 if J$(i+32,i+32) = "1" then l=l+1
7209 c = l mod 2
7210 r = l / 2
7211 if c = 1 then r$(33-i) = "1"
7212 if c = 0 then r$(33-i) = "0"
7213 next i
7214 for i = 1 to 32
7215 N$(i) = r$(33-i, 33-i)
7216 next i
7217 RETURN

7300 rem add2
7301 r = 0
7302 for i = 32 to 1 step -1
7303 l = r
7304 if N$(i,i) = "1" then l=l+1
7305 if K$(i+32,i+32) = "1" then l=l+1
7307 if J$(i,i) = "1" then l=l+1
7309 c = l mod 2
7310 r = l / 2
7311 if c = 1 then r$(33-i) = "1"
7312 if c = 0 then r$(33-i) = "0"
7313 next i
7314 for i = 1 to 32
7315 N$(i+32) = r$(33-i, 33-i)
7316 next i
7317 RETURN

7400 rem add3
7401 r = 0
7402 for i = 32 to 1 step -1
7403 l = r
7404 if A$(i+96,i+96) = "1" then l=l+1
7407 if N$(i,i) = "1" then l=l+1
7409 c = l mod 2
7410 r = l / 2
7411 if c = 1 then r$(33-i) = "1"
7412 if c = 0 then r$(33-i) = "0"
7413 next i
7414 for i = 1 to 32
7415 O$(i) = r$(33-i, 33-i)
7416 next i
7417 RETURN

7500 REM ADJUSTVAL:
7502 C$(1) = O$(1, 32)
7504 C$(33) = B$(1, 32)
7506 C$(65) = B$(33, 64)
7508 C$(97) = B$(65, 96)
7510 B$ = C$
7512 C$(1) = N$(33, 64)
7514 C$(33) = A$(1, 32)
7516 C$(65) = A$(33, 64)
7518 C$(97) = A$(65, 96)
7520 A$ = C$

7522 FOR X = 1 TO 4
7524 R$ = A$(X * 32 - 31, X * 32):GOSUB 8008:PRINT Q$;"  ";
7526 NEXT X
7528 FOR X = 1 TO 4
7530 R$ = B$(X * 32 - 31, X * 32):GOSUB 8008:PRINT Q$;"  ";
7532 NEXT X
7534 PRINT
7536 RETURN

7999 REM HEXBIN
8000 FOR I = 1 TO 8
8001 FOR O = 1 TO 16
8002 IF Q$(I,I) = v$(O,O) THEN Goto 8005
8004 NEXT O
8005 R$(I*4-3) = v$(O*4+13,O*4+16)
8006 next I
8007 return
                
8008 REM BINHEX
8009 FOR o = 1 TO 8
8010 FOR i = 1 TO 16
8011 IF R$(o*4-3, o*4) = V$(i*4+13, i*4+16) THEN GOTO 8013
8012 NEXT i
8013 Q$(o) = V$(I, I)
8014 NEXT o
8015 RETURN

8050 REM INITVALUES:
8051 Q$ = "6A09E667": GOSUB 7999: A$(1) = R$
8052 Q$ = "BB67AE85": GOSUB 7999: A$(33) = R$
8053 Q$ = "3C6EF372": GOSUB 7999: A$(65) = R$
8054 Q$ = "A54FF53A": GOSUB 7999: A$(97) = R$
8055 Q$ = "510E527F": GOSUB 7999: B$(1) = R$
8056 Q$ = "9B05688C": GOSUB 7999: B$(33) = R$
8057 Q$ = "1F83D9AB": GOSUB 7999: B$(65) = R$
8058 Q$ = "5BE0CD19": GOSUB 7999: B$(97) = R$
8059 RETURN