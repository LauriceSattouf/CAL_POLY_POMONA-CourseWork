
q
Command: %s
53*	vivadotcl2@
,synth_design -top top -part xc7a100tcsg324-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px? 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
_
#Helper process launched with PID %s4824*oasys2
95842default:defaultZ8-7075h px? 
?
%s*synth2?
xStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1115.809 ; gain = 26.902
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2
top2default:default2^
HC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/top.vhd2default:default2
512default:default8@Z8-638h px? 
^
%s
*synth2F
2	Parameter top_N_inp bound to: 4 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter top_N_seg7 bound to: 2 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter top_DIV bound to: 250000 - type: integer 
2default:defaulth p
x
? 
?
default block is never used226*oasys2^
HC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/top.vhd2default:default2
1152default:default8@Z8-226h px? 
?
default block is never used226*oasys2^
HC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/top.vhd2default:default2
1242default:default8@Z8-226h px? 
V
%s
*synth2>
*	Parameter N bound to: 4 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
AU2default:default2[
GC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/AU.vhd2default:default2
342default:default2
AUGEN2default:default2
AU2default:default2^
HC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/top.vhd2default:default2
1322default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
AU2default:default2]
GC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/AU.vhd2default:default2
442default:default8@Z8-638h px? 
V
%s
*synth2>
*	Parameter N bound to: 4 - type: integer 
2default:defaulth p
x
? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
	inp_1_int2default:default2]
GC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/AU.vhd2default:default2
552default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
	inp_2_int2default:default2]
GC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/AU.vhd2default:default2
552default:default8@Z8-614h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
AU2default:default2
12default:default2
12default:default2]
GC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/AU.vhd2default:default2
442default:default8@Z8-256h px? 
W
%s
*synth2?
+	Parameter N7 bound to: 2 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter DIV7 bound to: 250000 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
SevenSegCtrl2default:default2e
QC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/SevenSegCtrl.vhd2default:default2
342default:default2
SEG7GEN2default:default2 
SevenSegCtrl2default:default2^
HC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/top.vhd2default:default2
1492default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2 
SevenSegCtrl2default:default2g
QC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/SevenSegCtrl.vhd2default:default2
492default:default8@Z8-638h px? 
W
%s
*synth2?
+	Parameter N7 bound to: 2 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter DIV7 bound to: 250000 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter div bound to: 250000 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

ClkDivider2default:default2c
OC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/ClkDivider.vhd2default:default2
342default:default2
CLKDIV2default:default2

ClkDivider2default:default2g
QC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/SevenSegCtrl.vhd2default:default2
1042default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2

ClkDivider2default:default2e
OC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/ClkDivider.vhd2default:default2
432default:default8@Z8-638h px? 
]
%s
*synth2E
1	Parameter div bound to: 250000 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2

ClkDivider2default:default2
22default:default2
12default:default2e
OC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/ClkDivider.vhd2default:default2
432default:default8@Z8-256h px? 
V
%s
*synth2>
*	Parameter N bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
NBitCounter2default:default2d
PC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/NBitCounter.vhd2default:default2
342default:default2
CNTGEN2default:default2
NBitCounter2default:default2g
QC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/SevenSegCtrl.vhd2default:default2
1122default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
NBitCounter2default:default2f
PC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/NBitCounter.vhd2default:default2
432default:default8@Z8-638h px? 
V
%s
*synth2>
*	Parameter N bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
NBitCounter2default:default2
32default:default2
12default:default2f
PC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/NBitCounter.vhd2default:default2
432default:default8@Z8-256h px? 
Y
%s
*synth2A
-	Parameter MUXN bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Mux7Seg2default:default2`
LC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/Mux7Seg.vhd2default:default2
342default:default2
MUXGEN2default:default2
Mux7Seg2default:default2g
QC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/SevenSegCtrl.vhd2default:default2
1202default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
Mux7Seg2default:default2b
LC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/Mux7Seg.vhd2default:default2
462default:default8@Z8-638h px? 
Y
%s
*synth2A
-	Parameter MUXN bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
default block is never used226*oasys2b
LC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/Mux7Seg.vhd2default:default2
522default:default8@Z8-226h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
digit_32default:default2b
LC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/Mux7Seg.vhd2default:default2
502default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
digit_42default:default2b
LC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/Mux7Seg.vhd2default:default2
502default:default8@Z8-614h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
Mux7Seg2default:default2
42default:default2
12default:default2b
LC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/Mux7Seg.vhd2default:default2
462default:default8@Z8-256h px? 
Y
%s
*synth2A
-	Parameter DECN bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
DecodeUpCnt2default:default2d
PC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/DecodeUpCnt.vhd2default:default2
342default:default2
DECGEN2default:default2
DecodeUpCnt2default:default2g
QC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/SevenSegCtrl.vhd2default:default2
1312default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
DecodeUpCnt2default:default2f
PC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/DecodeUpCnt.vhd2default:default2
422default:default8@Z8-638h px? 
Y
%s
*synth2A
-	Parameter DECN bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
default block is never used226*oasys2f
PC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/DecodeUpCnt.vhd2default:default2
482default:default8@Z8-226h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
DecodeUpCnt2default:default2
52default:default2
12default:default2f
PC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/DecodeUpCnt.vhd2default:default2
422default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2!
FourBitTo7Seg2default:default2f
RC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/FourBitTo7Seg.vhd2default:default2
342default:default2
	DIGITCONV2default:default2!
FourBitTo7Seg2default:default2g
QC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/SevenSegCtrl.vhd2default:default2
1382default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2!
FourBitTo7Seg2default:default2h
RC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/FourBitTo7Seg.vhd2default:default2
412default:default8@Z8-638h px? 
?
default block is never used226*oasys2h
RC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/FourBitTo7Seg.vhd2default:default2
472default:default8@Z8-226h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2!
FourBitTo7Seg2default:default2
62default:default2
12default:default2h
RC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/FourBitTo7Seg.vhd2default:default2
412default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2 
SevenSegCtrl2default:default2
72default:default2
12default:default2g
QC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/SevenSegCtrl.vhd2default:default2
492default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
BinaryToBCD2default:default2d
PC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/BinaryToBCD.vhd2default:default2
342default:default2
	BCDCONV_A2default:default2
BinaryToBCD2default:default2^
HC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/top.vhd2default:default2
1622default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
BinaryToBCD2default:default2f
PC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/BinaryToBCD.vhd2default:default2
442default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
BinaryToBCD2default:default2
82default:default2
12default:default2f
PC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/BinaryToBCD.vhd2default:default2
442default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
BinaryToBCD2default:default2d
PC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/BinaryToBCD.vhd2default:default2
342default:default2
	BCDCONV_B2default:default2
BinaryToBCD2default:default2^
HC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/top.vhd2default:default2
1712default:default8@Z8-3491h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
top2default:default2
92default:default2
12default:default2^
HC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.srcs/sources_1/new/top.vhd2default:default2
512default:default8@Z8-256h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1168.324 ; gain = 79.418
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1168.324 ; gain = 79.418
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1168.324 ; gain = 79.418
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1168.3242default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2U
?C:/Users/Lauri/Downloads/BCD_AU/BCD_AU/Nexys-A7-100T-Master.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2U
?C:/Users/Lauri/Downloads/BCD_AU/BCD_AU/Nexys-A7-100T-Master.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2S
?C:/Users/Lauri/Downloads/BCD_AU/BCD_AU/Nexys-A7-100T-Master.xdc2default:default2)
.Xil/top_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1272.7662default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0032default:default2
1272.7662default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 1272.766 ; gain = 183.859
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 1272.766 ; gain = 183.859
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 1272.766 ; gain = 183.859
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 1272.766 ; gain = 183.859
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   18 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    5 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               18 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   18 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    8 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 2     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 1272.766 ; gain = 183.859
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:22 ; elapsed = 00:00:22 . Memory (MB): peak = 1272.766 ; gain = 183.859
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1282.457 ; gain = 193.551
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1283.238 ; gain = 194.332
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:00:26 ; elapsed = 00:00:26 . Memory (MB): peak = 1298.676 ; gain = 209.770
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:26 ; elapsed = 00:00:26 . Memory (MB): peak = 1298.676 ; gain = 209.770
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:26 ; elapsed = 00:00:26 . Memory (MB): peak = 1298.676 ; gain = 209.770
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:26 ; elapsed = 00:00:26 . Memory (MB): peak = 1298.676 ; gain = 209.770
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:26 ; elapsed = 00:00:26 . Memory (MB): peak = 1298.676 ; gain = 209.770
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:26 ; elapsed = 00:00:26 . Memory (MB): peak = 1298.676 ; gain = 209.770
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |     8|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |     2|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |    32|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |     8|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |    18|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   |     8|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   |    36|
2default:defaulth px? 
D
%s*synth2,
|9     |FDCE   |    29|
2default:defaulth px? 
D
%s*synth2,
|10    |IBUF   |    14|
2default:defaulth px? 
D
%s*synth2,
|11    |OBUF   |    15|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:26 ; elapsed = 00:00:26 . Memory (MB): peak = 1298.676 ; gain = 209.770
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:00:18 ; elapsed = 00:00:24 . Memory (MB): peak = 1298.676 ; gain = 105.328
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:26 ; elapsed = 00:00:27 . Memory (MB): peak = 1298.676 ; gain = 209.770
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1310.7152default:default2
0.0002default:defaultZ17-268h px? 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
82default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1310.7152default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
472default:default2
42default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:322default:default2
00:00:342default:default2
1310.7152default:default2
221.8092default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2V
BC:/Users/Lauri/Downloads/BCD_AU/BCD_AU/BCD_AU.runs/synth_1/top.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2p
\Executing : report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Mar 16 19:06:05 20212default:defaultZ17-206h px? 


End Record