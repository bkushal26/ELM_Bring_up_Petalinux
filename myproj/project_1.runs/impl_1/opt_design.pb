
O
Command: %s
53*	vivadotcl2

opt_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xczu4cg2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xczu4cg2default:defaultZ17-349h px? 
n
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_design2default:defaultZ4-22h px? 
R

Starting %s Task
103*constraints2
DRC2default:defaultZ18-103h px? 
P
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px? 
U
DRC finished with %s
272*project2
0 Errors2default:defaultZ1-461h px? 
d
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 2889.344 ; gain = 16.000 ; free physical = 3222 ; free virtual = 333822default:defaulth px? 
g

Starting %s Task
103*constraints2,
Cache Timing Information2default:defaultZ18-103h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
P
;Ending Cache Timing Information Task | Checksum: 112666cc8
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.91 ; elapsed = 00:00:00.53 . Memory (MB): peak = 2889.344 ; gain = 0.000 ; free physical = 3222 ; free virtual = 333822default:defaulth px? 
a

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103h px? 
?

Phase %s%s
101*constraints2
1 2default:default27
#Generate And Synthesize Debug Cores2default:defaultZ18-101h px? 
?
)Generating Script for core instance : %s 214*	chipscope28
$ps_block_i/debug_bridge_1/inst/xsdbm2default:defaultZ16-329h px? 
?
Generating IP %s for %s.
1712*coregen2+
xilinx.com:ip:xsdbm:3.02default:default2
xsdbm_CV2default:defaultZ19-3806h px? 
?
;Using cached IP synthesis design for IP %s, cache-ID = %s.
286*	chipscope2+
xilinx.com:ip:xsdbm:3.02default:default2$
a4c468715d8c41fe2default:defaultZ16-469h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.032default:default2
00:00:00.032default:default2
3039.1562default:default2
0.0002default:default2
30392default:default2
332032default:defaultZ17-722h px? 
W
BPhase 1 Generate And Synthesize Debug Cores | Checksum: 135e36b44
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:48 ; elapsed = 00:01:21 . Memory (MB): peak = 3039.156 ; gain = 23.812 ; free physical = 3039 ; free virtual = 332032default:defaulth px? 
i

Phase %s%s
101*constraints2
2 2default:default2
Retarget2default:defaultZ18-101h px? 
y
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
142default:default2
18332default:defaultZ31-138h px? 
K
Retargeted %s cell(s).
49*opt2
02default:defaultZ31-49h px? 
<
'Phase 2 Retarget | Checksum: 1b8c5b407
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:50 ; elapsed = 00:01:22 . Memory (MB): peak = 3039.156 ; gain = 23.812 ; free physical = 3045 ; free virtual = 332092default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2
Retarget2default:default2
1392default:default2
4382default:defaultZ31-389h px? 
?
?In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Retarget2default:default2
1352default:defaultZ31-1021h px? 
u

Phase %s%s
101*constraints2
3 2default:default2(
Constant propagation2default:defaultZ18-101h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
H
3Phase 3 Constant propagation | Checksum: 1728000c0
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:50 ; elapsed = 00:01:22 . Memory (MB): peak = 3039.156 ; gain = 23.812 ; free physical = 3045 ; free virtual = 332092default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2(
Constant propagation2default:default2
322default:default2
2982default:defaultZ31-389h px? 
?
?In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2(
Constant propagation2default:default2
1352default:defaultZ31-1021h px? 
f

Phase %s%s
101*constraints2
4 2default:default2
Sweep2default:defaultZ18-101h px? 
9
$Phase 4 Sweep | Checksum: 1df645868
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:52 ; elapsed = 00:01:24 . Memory (MB): peak = 3039.156 ; gain = 23.812 ; free physical = 3044 ; free virtual = 332082default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2
Sweep2default:default2
02default:default2
4472default:defaultZ31-389h px? 
?
?In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Sweep2default:default2
11172default:defaultZ31-1021h px? 
r

Phase %s%s
101*constraints2
5 2default:default2%
BUFG optimization2default:defaultZ18-101h px? 
?
PPhase BUFG optimization inserted %s global clock buffer(s) for CLOCK_LOW_FANOUT.553*opt2
02default:defaultZ31-1077h px? 
E
0Phase 5 BUFG optimization | Checksum: 1df645868
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:52 ; elapsed = 00:01:24 . Memory (MB): peak = 3039.156 ; gain = 23.812 ; free physical = 3044 ; free virtual = 332082default:defaulth px? 
?
EPhase %s created %s cells of which %s are BUFGs and removed %s cells.395*opt2%
BUFG optimization2default:default2
02default:default2
02default:default2
02default:defaultZ31-662h px? 
|

Phase %s%s
101*constraints2
6 2default:default2/
Shift Register Optimization2default:defaultZ18-101h px? 
?
dSRL Remap converted %s SRLs to %s registers and converted %s registers of register chains to %s SRLs546*opt2
02default:default2
02default:default2
02default:default2
02default:defaultZ31-1064h px? 
O
:Phase 6 Shift Register Optimization | Checksum: 1df645868
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:52 ; elapsed = 00:01:24 . Memory (MB): peak = 3039.156 ; gain = 23.812 ; free physical = 3043 ; free virtual = 332082default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2/
Shift Register Optimization2default:default2
02default:default2
02default:defaultZ31-389h px? 
x

Phase %s%s
101*constraints2
7 2default:default2+
Post Processing Netlist2default:defaultZ18-101h px? 
K
6Phase 7 Post Processing Netlist | Checksum: 1df645868
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:52 ; elapsed = 00:01:24 . Memory (MB): peak = 3039.156 ; gain = 23.812 ; free physical = 3043 ; free virtual = 332072default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2+
Post Processing Netlist2default:default2
02default:default2
02default:defaultZ31-389h px? 
?
?In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2+
Post Processing Netlist2default:default2
1562default:defaultZ31-1021h px? 
/
Opt_design Change Summary
*commonh px? 
/
=========================
*commonh px? 


*commonh px? 


*commonh px? 
?
z-------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Phase                        |  #Cells created  |  #Cells Removed  |  #Constrained objects preventing optimizations  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Retarget                     |             139  |             438  |                                            135  |
|  Constant propagation         |              32  |             298  |                                            135  |
|  Sweep                        |               0  |             447  |                                           1117  |
|  BUFG optimization            |               0  |               0  |                                              0  |
|  Shift Register Optimization  |               0  |               0  |                                              0  |
|  Post Processing Netlist      |               0  |               0  |                                            156  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
a

Starting %s Task
103*constraints2&
Connectivity Check2default:defaultZ18-103h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.03 ; elapsed = 00:00:00.02 . Memory (MB): peak = 3039.156 ; gain = 0.000 ; free physical = 3043 ; free virtual = 332072default:defaulth px? 
J
5Ending Logic Optimization Task | Checksum: 1c2f06d17
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:53 ; elapsed = 00:01:25 . Memory (MB): peak = 3039.156 ; gain = 23.812 ; free physical = 3043 ; free virtual = 332072default:defaulth px? 
a

Starting %s Task
103*constraints2&
Power Optimization2default:defaultZ18-103h px? 
s
7Will skip clock gating for clocks with period < %s ns.
114*pwropt2
2.002default:defaultZ34-132h px? 
J
5Ending Power Optimization Task | Checksum: 1c2f06d17
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.03 ; elapsed = 00:00:00.04 . Memory (MB): peak = 3039.156 ; gain = 0.000 ; free physical = 3043 ; free virtual = 332072default:defaulth px? 
\

Starting %s Task
103*constraints2!
Final Cleanup2default:defaultZ18-103h px? 
E
0Ending Final Cleanup Task | Checksum: 1c2f06d17
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 3039.156 ; gain = 0.000 ; free physical = 3043 ; free virtual = 332072default:defaulth px? 
b

Starting %s Task
103*constraints2'
Netlist Obfuscation2default:defaultZ18-103h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3039.1562default:default2
0.0002default:default2
30432default:default2
332072default:defaultZ17-722h px? 
K
6Ending Netlist Obfuscation Task | Checksum: 1c2f06d17
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 3039.156 ; gain = 0.000 ; free physical = 3043 ; free virtual = 332072default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
402default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px? 
\
%s completed successfully
29*	vivadotcl2

opt_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
opt_design: 2default:default2
00:01:022default:default2
00:01:342default:default2
3039.1562default:default2
165.8122default:default2
30432default:default2
332072default:defaultZ17-722h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
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
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:00.332default:default2
00:00:00.122default:default2
3067.9412default:default2
20.7812default:default2
30282default:default2
331972default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?/home/bhalerao/kushal/ELM_test_suites/vivadoProjects/elmGit/ELM_Bring_up_Petalinux/myproj/project_1.runs/impl_1/ps_block_wrapper_opt.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
?Executing : report_drc -file ps_block_wrapper_drc_opted.rpt -pb ps_block_wrapper_drc_opted.pb -rpx ps_block_wrapper_drc_opted.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
ureport_drc -file ps_block_wrapper_drc_opted.rpt -pb ps_block_wrapper_drc_opted.pb -rpx ps_block_wrapper_drc_opted.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
?/home/bhalerao/kushal/ELM_test_suites/vivadoProjects/elmGit/ELM_Bring_up_Petalinux/myproj/project_1.runs/impl_1/ps_block_wrapper_drc_opted.rpt?/home/bhalerao/kushal/ELM_test_suites/vivadoProjects/elmGit/ELM_Bring_up_Petalinux/myproj/project_1.runs/impl_1/ps_block_wrapper_drc_opted.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
report_drc: 2default:default2
00:00:072default:default2
00:00:062default:default2
3147.3162default:default2
79.3752default:default2
30242default:default2
331932default:defaultZ17-722h px? 


End Record