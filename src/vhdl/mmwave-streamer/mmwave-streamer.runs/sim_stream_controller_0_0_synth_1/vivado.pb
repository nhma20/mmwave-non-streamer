
>
Refreshing IP repositories
234*coregenZ19-234h px? 
?
 Loaded user IP repository '%s'.
1135*coregen29
%/home/nm/mmwave-fpga-streamer/src/hls2default:defaultZ19-1700h px? 
?
 Loaded user IP repository '%s'.
1135*coregen2P
</home/nm/mmwave-fpga-streamer/src/vhdl/interface_definitions2default:defaultZ19-1700h px? 
?
"Loaded Vivado IP repository '%s'.
1332*coregen27
#/tools/Xilinx/Vivado/2020.2/data/ip2default:defaultZ19-2313h px? 
?
Command: %s
53*	vivadotcl2n
Zsynth_design -top sim_stream_controller_0_0 -part xczu3eg-sbva484-1-i -mode out_of_context2default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
IP '%s' is restricted:
%s
1667*coregen2-
sim_stream_controller_0_02default:default2E
1* Module reference is stale and needs refreshing.2default:defaultZ19-3571h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xczu3eg2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xczu3eg2default:defaultZ17-349h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
42default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
a
#Helper process launched with PID %s4824*oasys2
2134062default:defaultZ8-7075h px? 
?
%s*synth2?
?Starting Synthesize : Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 2323.070 ; gain = 0.000 ; free physical = 8434 ; free virtual = 19706
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2-
sim_stream_controller_0_02default:default2?
?/home/nm/mmwave-fpga-streamer/src/vhdl/mmwave-streamer/mmwave-streamer.gen/sources_1/bd/sim/ip/sim_stream_controller_0_0/synth/sim_stream_controller_0_0.vhd2default:default2
662default:default8@Z8-638h px? 
V
%s
*synth2>
*	Parameter CNT_MAX bound to: 8'b00000100 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2%
stream_controller2default:default2P
</home/nm/mmwave-fpga-streamer/src/vhdl/stream_controller.vhd2default:default2
352default:default2
U02default:default2%
stream_controller2default:default2?
?/home/nm/mmwave-fpga-streamer/src/vhdl/mmwave-streamer/mmwave-streamer.gen/sources_1/bd/sim/ip/sim_stream_controller_0_0/synth/sim_stream_controller_0_0.vhd2default:default2
962default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2%
stream_controller2default:default2R
</home/nm/mmwave-fpga-streamer/src/vhdl/stream_controller.vhd2default:default2
502default:default8@Z8-638h px? 
V
%s
*synth2>
*	Parameter CNT_MAX bound to: 8'b00000100 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2%
stream_controller2default:default2
12default:default2
12default:default2R
</home/nm/mmwave-fpga-streamer/src/vhdl/stream_controller.vhd2default:default2
502default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2-
sim_stream_controller_0_02default:default2
22default:default2
12default:default2?
?/home/nm/mmwave-fpga-streamer/src/vhdl/mmwave-streamer/mmwave-streamer.gen/sources_1/bd/sim/ip/sim_stream_controller_0_0/synth/sim_stream_controller_0_0.vhd2default:default2
662default:default8@Z8-256h px? 
?
%s*synth2?
?Finished Synthesize : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 2323.070 ; gain = 0.000 ; free physical = 9608 ; free virtual = 20882
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
?Finished Constraint Validation : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 2323.070 ; gain = 0.000 ; free physical = 9708 ; free virtual = 20984
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
N
%s
*synth26
"Loading part: xczu3eg-sbva484-1-i
2default:defaulth p
x
? 
B
 Reading net delay rules and data4578*oasysZ8-6742h px? 
Z
Loading part %s157*device2'
xczu3eg-sbva484-1-i2default:defaultZ21-403h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 2330.809 ; gain = 7.738 ; free physical = 10296 ; free virtual = 21572
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
!inferring latch for variable '%s'327*oasys2"
next_state_reg2default:default2R
</home/nm/mmwave-fpga-streamer/src/vhdl/stream_controller.vhd2default:default2
802default:default8@Z8-327h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 2330.809 ; gain = 7.738 ; free physical = 10262 ; free virtual = 21539
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
,	   2 Input    9 Bit       Adders := 1     
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
.	                9 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
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
,	   6 Input    9 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    1 Bit        Muxes := 2     
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
DSPs: 360 (col length:72)
BRAMs: 432 (col length: RAMB18 72 RAMB36 36)
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
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:08 ; elapsed = 00:00:11 . Memory (MB): peak = 2620.043 ; gain = 296.973 ; free physical = 7871 ; free virtual = 19159
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
?Finished Timing Optimization : Time (s): cpu = 00:00:08 ; elapsed = 00:00:12 . Memory (MB): peak = 2620.043 ; gain = 296.973 ; free physical = 7868 ; free virtual = 19155
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
?Finished Technology Mapping : Time (s): cpu = 00:00:08 ; elapsed = 00:00:12 . Memory (MB): peak = 2620.043 ; gain = 296.973 ; free physical = 7867 ; free virtual = 19155
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
?Finished IO Insertion : Time (s): cpu = 00:00:10 ; elapsed = 00:00:14 . Memory (MB): peak = 2620.043 ; gain = 296.973 ; free physical = 7882 ; free virtual = 19170
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
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:10 ; elapsed = 00:00:14 . Memory (MB): peak = 2620.043 ; gain = 296.973 ; free physical = 7882 ; free virtual = 19170
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
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:10 ; elapsed = 00:00:14 . Memory (MB): peak = 2620.043 ; gain = 296.973 ; free physical = 7882 ; free virtual = 19170
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
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:10 ; elapsed = 00:00:14 . Memory (MB): peak = 2620.043 ; gain = 296.973 ; free physical = 7882 ; free virtual = 19169
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:10 ; elapsed = 00:00:14 . Memory (MB): peak = 2620.043 ; gain = 296.973 ; free physical = 7882 ; free virtual = 19169
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
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:10 ; elapsed = 00:00:14 . Memory (MB): peak = 2620.043 ; gain = 296.973 ; free physical = 7882 ; free virtual = 19169
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
B
%s*synth2*
+------+-----+------+
2default:defaulth px? 
B
%s*synth2*
|      |Cell |Count |
2default:defaulth px? 
B
%s*synth2*
+------+-----+------+
2default:defaulth px? 
B
%s*synth2*
|1     |LUT1 |     2|
2default:defaulth px? 
B
%s*synth2*
|2     |LUT2 |     1|
2default:defaulth px? 
B
%s*synth2*
|3     |LUT3 |     5|
2default:defaulth px? 
B
%s*synth2*
|4     |LUT4 |     6|
2default:defaulth px? 
B
%s*synth2*
|5     |LUT5 |     4|
2default:defaulth px? 
B
%s*synth2*
|6     |LUT6 |     5|
2default:defaulth px? 
B
%s*synth2*
|7     |FDCE |     3|
2default:defaulth px? 
B
%s*synth2*
|8     |FDRE |    10|
2default:defaulth px? 
B
%s*synth2*
|9     |LD   |     3|
2default:defaulth px? 
B
%s*synth2*
+------+-----+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
Y
%s
*synth2A
-+------+---------+------------------+------+
2default:defaulth p
x
? 
Y
%s
*synth2A
-|      |Instance |Module            |Cells |
2default:defaulth p
x
? 
Y
%s
*synth2A
-+------+---------+------------------+------+
2default:defaulth p
x
? 
Y
%s
*synth2A
-|1     |top      |                  |    39|
2default:defaulth p
x
? 
Y
%s
*synth2A
-|2     |  U0     |stream_controller |    39|
2default:defaulth p
x
? 
Y
%s
*synth2A
-+------+---------+------------------+------+
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
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:10 ; elapsed = 00:00:14 . Memory (MB): peak = 2620.043 ; gain = 296.973 ; free physical = 7882 ; free virtual = 19169
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
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Runtime : Time (s): cpu = 00:00:10 ; elapsed = 00:00:14 . Memory (MB): peak = 2620.043 ; gain = 296.973 ; free physical = 7884 ; free virtual = 19171
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:10 ; elapsed = 00:00:14 . Memory (MB): peak = 2620.051 ; gain = 296.973 ; free physical = 7883 ; free virtual = 19171
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2620.0512default:default2
0.0002default:default2
79542default:default2
192422default:defaultZ17-722h px? 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
32default:defaultZ29-17h px? 
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
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2676.0702default:default2
0.0002default:default2
79372default:default2
192242default:defaultZ17-722h px? 
?
!Unisim Transformation Summary:
%s111*project2Y
E  A total of 3 instances were transformed.
  LD => LDCE: 3 instances
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
222default:default2
22default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:152default:default2
00:00:162default:default2
2676.0702default:default2
353.2662default:default2
81392default:default2
194262default:defaultZ17-722h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?/home/nm/mmwave-fpga-streamer/src/vhdl/mmwave-streamer/mmwave-streamer.runs/sim_stream_controller_0_0_synth_1/sim_stream_controller_0_0.dcp2default:defaultZ17-1381h px? 
?
'%s' is deprecated. %s
384*common2#
use_project_ipc2default:default2A
-This option is deprecated and no longer used.2default:defaultZ17-576h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?/home/nm/mmwave-fpga-streamer/src/vhdl/mmwave-streamer/mmwave-streamer.runs/sim_stream_controller_0_0_synth_1/sim_stream_controller_0_0.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
?Executing : report_utilization -file sim_stream_controller_0_0_utilization_synth.rpt -pb sim_stream_controller_0_0_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Feb 24 10:16:19 20222default:defaultZ17-206h px? 


End Record