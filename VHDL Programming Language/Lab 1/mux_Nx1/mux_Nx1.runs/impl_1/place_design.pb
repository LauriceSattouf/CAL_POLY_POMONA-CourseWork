
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1802.7582default:default2
0.0002default:defaultZ17-268h px? 
[
FPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 11444b468
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.005 . Memory (MB): peak = 1802.758 ; gain = 0.0002default:defaulth px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1802.7582default:default2
0.0002default:defaultZ17-268h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
?
[Partially locked IO Bus is found. Following components of the IO Bus %s are not locked: %s
87*place2
inp2default:default2?
? '<MSGMETA::BEGIN::BLOCK>inp[63]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[62]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[61]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[60]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[59]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[58]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[57]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[56]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[55]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[54]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[53]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[52]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[51]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[50]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[49]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[48]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[47]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[46]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[45]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[44]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[43]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[42]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[41]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[40]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[39]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[38]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[37]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[36]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[35]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[34]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[33]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[32]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[31]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[30]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[29]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[28]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[27]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[26]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[25]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[24]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[23]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[22]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[21]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[20]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[19]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[18]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[17]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>inp[16]<MSGMETA::END>' "
inp[63]2 ':'  '"
inp[62]:'  '"
inp[61]:'  '"
inp[60]:'  '"
inp[59]:'  '"
inp[58]:'  '"
inp[57]:'  '"
inp[56]:'  '"
inp[55]:'  '"
inp[54]:'  '"
inp[53]:'  '"
inp[52]:'  '"
inp[51]:'  '"
inp[50]:'  '"
inp[49]:'  '"
inp[48]:'  '"
inp[47]:'  '"
inp[46]:'  '"
inp[45]:'  '"
inp[44]:'  '"
inp[43]:'  '"
inp[42]:'  '"
inp[41]:'  '"
inp[40]:'  '"
inp[39]:'  '"
inp[38]:'  '"
inp[37]:'  '"
inp[36]:'  '"
inp[35]:'  '"
inp[34]:'  '"
inp[33]:'  '"
inp[32]:'  '"
inp[31]:'  '"
inp[30]:'  '"
inp[29]:'  '"
inp[28]:'  '"
inp[27]:'  '"
inp[26]:'  '"
inp[25]:'  '"
inp[24]:'  '"
inp[23]:'  '"
inp[22]:'  '"
inp[21]:'  '"
inp[20]:'  '"
inp[19]:'  '"
inp[18]:'  '"
inp[17]:'  '"
inp[16]:' 2default:default8Z30-87h px? 
?
[Partially locked IO Bus is found. Following components of the IO Bus %s are not locked: %s
87*place2
sel2default:default2?
^ '<MSGMETA::BEGIN::BLOCK>sel[5]<MSGMETA::END>'  '<MSGMETA::BEGIN::BLOCK>sel[4]<MSGMETA::END>' "
sel[5]2 ':'  '"
sel[4]:' 2default:default8Z30-87h px? 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: db9b080c
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.417 . Memory (MB): peak = 1802.758 ; gain = 0.0002default:defaulth px? 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 12140923a
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.432 . Memory (MB): peak = 1802.758 ; gain = 0.0002default:defaulth px? 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 12140923a
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.434 . Memory (MB): peak = 1802.758 ; gain = 0.0002default:defaulth px? 
I
4Phase 1 Placer Initialization | Checksum: 12140923a
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.437 . Memory (MB): peak = 1802.758 ; gain = 0.0002default:defaulth px? 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px? 
C
.Phase 2.1 Floorplanning | Checksum: 12140923a
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.438 . Memory (MB): peak = 1802.758 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
2.2 2default:default25
!Update Timing before SLR Path Opt2default:defaultZ18-101h px? 
W
BPhase 2.2 Update Timing before SLR Path Opt | Checksum: 12140923a
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.439 . Memory (MB): peak = 1802.758 ; gain = 0.0002default:defaulth px? 
x

Phase %s%s
101*constraints2
2.3 2default:default2)
Global Placement Core2default:defaultZ18-101h px? 
h
Eplace_design is not in timing mode. Skip physical synthesis in placer29*	placeflowZ46-29h px? 
K
6Phase 2.3 Global Placement Core | Checksum: 19a4ae414
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.838 . Memory (MB): peak = 1802.758 ; gain = 0.0002default:defaulth px? 
D
/Phase 2 Global Placement | Checksum: 19a4ae414
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.841 . Memory (MB): peak = 1802.758 ; gain = 0.0002default:defaulth px? 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px? 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px? 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 19a4ae414
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.843 . Memory (MB): peak = 1802.758 ; gain = 0.0002default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 125f5b3a9
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.848 . Memory (MB): peak = 1802.758 ; gain = 0.0002default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
L
7Phase 3.3 Area Swap Optimization | Checksum: 18d465dda
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.856 . Memory (MB): peak = 1802.758 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 18d465dda
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.857 . Memory (MB): peak = 1802.758 ; gain = 0.0002default:defaulth px? 


Phase %s%s
101*constraints2
3.5 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
R
=Phase 3.5 Small Shape Detail Placement | Checksum: 12aefd387
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.991 . Memory (MB): peak = 1802.758 ; gain = 0.0002default:defaulth px? 
u

Phase %s%s
101*constraints2
3.6 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
H
3Phase 3.6 Re-assign LUT pins | Checksum: 12aefd387
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.995 . Memory (MB): peak = 1802.758 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
3.7 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.7 Pipeline Register Optimization | Checksum: 12aefd387
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.995 . Memory (MB): peak = 1802.758 ; gain = 0.0002default:defaulth px? 
D
/Phase 3 Detail Placement | Checksum: 12aefd387
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.996 . Memory (MB): peak = 1802.758 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px? 
N
9Phase 4.1 Post Commit Optimization | Checksum: 12aefd387
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.999 . Memory (MB): peak = 1802.758 ; gain = 0.0002default:defaulth px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 12aefd387
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 1802.758 ; gain = 0.0002default:defaulth px? 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 


Phase %s%s
101*constraints2
4.3.1 2default:default2.
Print Estimated Congestion2default:defaultZ18-101h px? 
?
'Post-Placement Estimated Congestion %s
38*	placeflow2?
?
 ____________________________________________________
|           | Global Congestion | Short Congestion  |
| Direction | Region Size       | Region Size       |
|___________|___________________|___________________|
|      North|                1x1|                1x1|
|___________|___________________|___________________|
|      South|                1x1|                1x1|
|___________|___________________|___________________|
|       East|                1x1|                1x1|
|___________|___________________|___________________|
|       West|                1x1|                1x1|
|___________|___________________|___________________|
2default:defaultZ30-612h px? 
R
=Phase 4.3.1 Print Estimated Congestion | Checksum: 12aefd387
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 1802.758 ; gain = 0.0002default:defaulth px? 
F
1Phase 4.3 Placer Reporting | Checksum: 12aefd387
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 1802.758 ; gain = 0.0002default:defaulth px? 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1802.7582default:default2
0.0002default:defaultZ17-268h px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 1802.758 ; gain = 0.0002default:defaulth px? 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 12aefd387
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 1802.758 ; gain = 0.0002default:defaulth px? 
=
(Ending Placer Task | Checksum: 86368454
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 1802.758 ; gain = 0.0002default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
432default:default2
32default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:002default:default2 
00:00:00.0352default:default2
1802.7582default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2q
]C:/Users/Lauri/Desktop/Spring2021/4304VHDL/Labs/mux_Nx1/mux_Nx1.runs/impl_1/muxNx1_placed.dcp2default:defaultZ17-1381h px? 
a
%s4*runtcl2E
1Executing : report_io -file muxNx1_io_placed.rpt
2default:defaulth px? 
?
kreport_io: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.054 . Memory (MB): peak = 1802.758 ; gain = 0.000
*commonh px? 
?
%s4*runtcl2x
dExecuting : report_utilization -file muxNx1_utilization_placed.rpt -pb muxNx1_utilization_placed.pb
2default:defaulth px? 
~
%s4*runtcl2b
NExecuting : report_control_sets -verbose -file muxNx1_control_sets_placed.rpt
2default:defaulth px? 
?
qreport_control_sets: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 1802.758 ; gain = 0.000
*commonh px? 


End Record