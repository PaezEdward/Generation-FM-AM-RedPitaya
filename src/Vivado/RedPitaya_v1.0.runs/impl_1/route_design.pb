
o
Command: %s
53*	vivadotcl2>
*route_design -directive NoTimingRelaxation2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0102default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0102default:defaultZ17-349h px? 
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
route_design2default:defaultZ4-22h px? 
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
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
i
Using Router directive '%s'.
20*	routeflow2&
NoTimingRelaxation2default:defaultZ35-270h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
B
-Phase 1 Build RT Design | Checksum: 8e8775a9
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:13 ; elapsed = 00:00:11 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
A
,Phase 2.1 Create Timer | Checksum: 8e8775a9
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:13 ; elapsed = 00:00:11 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
M
8Phase 2.2 Fix Topology Constraints | Checksum: 8e8775a9
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:13 ; elapsed = 00:00:11 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.3 Pre Route Cleanup | Checksum: 8e8775a9
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:13 ; elapsed = 00:00:11 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.4 Update Timing | Checksum: 248fb14df
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-3.160 | TNS=-3.160 | WHS=-0.193 | THS=-50.265|
2default:defaultZ35-416h px? 
I
4Phase 2 Router Initialization | Checksum: 1f27431b2
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:14 ; elapsed = 00:00:12 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
B
-Phase 3 Initial Routing | Checksum: f6bd5a2b
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:15 ; elapsed = 00:00:13 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-3.493 | TNS=-3.493 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 2199fe8b5
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:54 ; elapsed = 00:02:47 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-3.456 | TNS=-3.456 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 125204eec
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:54 ; elapsed = 00:02:48 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
u

Phase %s%s
101*constraints2
4.3 2default:default2&
Global Iteration 22default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-3.546 | TNS=-3.546 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.3 Global Iteration 2 | Checksum: 1650b86e7
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:55 ; elapsed = 00:02:48 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 1650b86e7
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:55 ; elapsed = 00:02:48 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 5.1.1 Update Timing | Checksum: 14024d678
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:55 ; elapsed = 00:02:48 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-3.456 | TNS=-3.456 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 14024d678
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:55 ; elapsed = 00:02:48 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 14024d678
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:55 ; elapsed = 00:02:48 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 14024d678
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:55 ; elapsed = 00:02:48 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 6.1.1 Update Timing | Checksum: 15f6c563c
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:55 ; elapsed = 00:02:48 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-3.456 | TNS=-3.456 | WHS=0.035  | THS=0.000  |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 11c4640d2
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:55 ; elapsed = 00:02:48 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
A
,Phase 6 Post Hold Fix | Checksum: 11c4640d2
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:55 ; elapsed = 00:02:48 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
t

Phase %s%s
101*constraints2
7 2default:default2'
Timing Verification2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
7.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 7.1 Update Timing | Checksum: 1a6fd2110
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:55 ; elapsed = 00:02:48 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-3.456 | TNS=-3.456 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
G
2Phase 7 Timing Verification | Checksum: 1a6fd2110
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:55 ; elapsed = 00:02:48 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
o

Phase %s%s
101*constraints2
8 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 8 Route finalize | Checksum: 1a6fd2110
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:55 ; elapsed = 00:02:48 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
v

Phase %s%s
101*constraints2
9 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 9 Verifying routed nets | Checksum: 1a6fd2110
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:55 ; elapsed = 00:02:48 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
s

Phase %s%s
101*constraints2
10 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
F
1Phase 10 Depositing Routes | Checksum: 166962484
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:56 ; elapsed = 00:02:49 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
w

Phase %s%s
101*constraints2
11 2default:default2)
Incr Placement Change2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0112default:default2
1453.6522default:default2
0.0002default:defaultZ17-268h px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
-3.4542default:defaultZ30-746h px? 
@
+Ending IncrPlace Task | Checksum: beddb51e
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
J
5Phase 11 Incr Placement Change | Checksum: 166962484
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:59 ; elapsed = 00:02:51 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
q

Phase %s%s
101*constraints2
12 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
C
.Phase 12 Build RT Design | Checksum: 5e2c9027
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:03:00 ; elapsed = 00:02:52 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
w

Phase %s%s
101*constraints2
13 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
13.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
C
.Phase 13.1 Create Timer | Checksum: 18cc66127
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:03:00 ; elapsed = 00:02:52 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
|

Phase %s%s
101*constraints2
13.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
O
:Phase 13.2 Fix Topology Constraints | Checksum: 18cc66127
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:03:00 ; elapsed = 00:02:52 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
u

Phase %s%s
101*constraints2
13.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
H
3Phase 13.3 Pre Route Cleanup | Checksum: 18cc66127
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:03:00 ; elapsed = 00:02:52 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
w

Phase %s%s
101*constraints2
13.4 2default:default2'
Timing Verification2default:defaultZ18-101h px? 
s

Phase %s%s
101*constraints2
13.4.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
F
1Phase 13.4.1 Update Timing | Checksum: 1a16f2667
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:03:01 ; elapsed = 00:02:53 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-3.454 | TNS=-3.454 | WHS=0.037  | THS=0.000  |
2default:defaultZ35-416h px? 
J
5Phase 13.4 Timing Verification | Checksum: 1a16f2667
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:03:01 ; elapsed = 00:02:53 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
q

Phase %s%s
101*constraints2
13.5 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 13.5 Update Timing | Checksum: 2318fae41
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:03:02 ; elapsed = 00:02:54 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-3.456 | TNS=-3.456 | WHS=-0.193 | THS=-49.953|
2default:defaultZ35-416h px? 
J
5Phase 13 Router Initialization | Checksum: 1bfaca809
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:03:03 ; elapsed = 00:02:54 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
q

Phase %s%s
101*constraints2
14 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
D
/Phase 14 Initial Routing | Checksum: 1cca8c874
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:03:03 ; elapsed = 00:02:54 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
t

Phase %s%s
101*constraints2
15 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
v

Phase %s%s
101*constraints2
15.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-3.456 | TNS=-3.456 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
I
4Phase 15.1 Global Iteration 0 | Checksum: 18733456c
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:03:05 ; elapsed = 00:02:56 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
v

Phase %s%s
101*constraints2
15.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-3.557 | TNS=-3.557 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
I
4Phase 15.2 Global Iteration 1 | Checksum: 200be457e
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:04:24 ; elapsed = 00:04:11 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
G
2Phase 15 Rip-up And Reroute | Checksum: 200be457e
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:04:24 ; elapsed = 00:04:11 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
}

Phase %s%s
101*constraints2
16 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
16.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
s

Phase %s%s
101*constraints2
16.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
F
1Phase 16.1.1 Update Timing | Checksum: 21225dc83
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:04:24 ; elapsed = 00:04:11 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-3.456 | TNS=-3.456 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
D
/Phase 16.1 Delay CleanUp | Checksum: 21225dc83
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:04:24 ; elapsed = 00:04:11 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
{

Phase %s%s
101*constraints2
16.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
N
9Phase 16.2 Clock Skew Optimization | Checksum: 21225dc83
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:04:24 ; elapsed = 00:04:11 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
P
;Phase 16 Delay and Skew Optimization | Checksum: 21225dc83
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:04:24 ; elapsed = 00:04:11 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
o

Phase %s%s
101*constraints2
17 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
17.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
s

Phase %s%s
101*constraints2
17.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
F
1Phase 17.1.1 Update Timing | Checksum: 1ca37821f
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:04:24 ; elapsed = 00:04:11 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-3.456 | TNS=-3.456 | WHS=0.035  | THS=0.000  |
2default:defaultZ35-416h px? 
D
/Phase 17.1 Hold Fix Iter | Checksum: 190ea77ed
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:04:24 ; elapsed = 00:04:11 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
B
-Phase 17 Post Hold Fix | Checksum: 190ea77ed
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:04:24 ; elapsed = 00:04:11 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
u

Phase %s%s
101*constraints2
18 2default:default2'
Timing Verification2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
18.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 18.1 Update Timing | Checksum: 1823092ce
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:04:25 ; elapsed = 00:04:11 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-3.456 | TNS=-3.456 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 18 Timing Verification | Checksum: 1823092ce
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:04:25 ; elapsed = 00:04:11 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
n

Phase %s%s
101*constraints2
19 2default:default2 
Reset Design2default:defaultZ18-101h px? 
a
&%s nets already restored were skipped.120*route2
26602default:defaultZ35-307h px? 
A
,Phase 19 Reset Design | Checksum: 1df2eaf06
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:04:25 ; elapsed = 00:04:11 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
t

Phase %s%s
101*constraints2
20 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
?Timer settings changed to match sign-off timing analysis. Setup and Hold analysis on slow, fast Corners with nearest common node skew is enabled.
62*routeZ35-62h px? 
?
Post Routing Timing Summary %s
20*route2J
6| WNS=-3.454 | TNS=-3.454 | WHS=0.037  | THS=0.000  |
2default:defaultZ35-20h px? 
?
dThe design did not meet timing requirements. Please run report_timing_summary for detailed reports.
39*routeZ35-39h px? 
?
?TNS is the sum of the worst slack violation on every endpoint in the design. Review the paths with the biggest WNS violations in the timing reports and modify your constraints or your design to improve both WNS and TNS.
96*routeZ35-253h px? 
G
2Phase 20 Post Router Timing | Checksum: 2339dee90
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:04:26 ; elapsed = 00:04:12 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2o
[Time (s): cpu = 00:04:26 ; elapsed = 00:04:12 . Memory (MB): peak = 1453.652 ; gain = 0.0002default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2692default:default2
802default:default2
812default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:04:282default:default2
00:04:142default:default2
1453.6522default:default2
0.0002default:defaultZ17-268h px? 
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
00:00:012default:default2 
00:00:00.3432default:default2
1453.6522default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2f
RE:/VIVADO_FPGA/RedPitaya_v1.0/RedPitaya_v1.0.runs/impl_1/system_wrapper_routed.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
Executing : report_drc -file system_wrapper_drc_routed.rpt -pb system_wrapper_drc_routed.pb -rpx system_wrapper_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
rreport_drc -file system_wrapper_drc_routed.rpt -pb system_wrapper_drc_routed.pb -rpx system_wrapper_drc_routed.rpx2default:defaultZ4-113h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
VE:/VIVADO_FPGA/RedPitaya_v1.0/RedPitaya_v1.0.runs/impl_1/system_wrapper_drc_routed.rptVE:/VIVADO_FPGA/RedPitaya_v1.0/RedPitaya_v1.0.runs/impl_1/system_wrapper_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file system_wrapper_methodology_drc_routed.rpt -pb system_wrapper_methodology_drc_routed.pb -rpx system_wrapper_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file system_wrapper_methodology_drc_routed.rpt -pb system_wrapper_methodology_drc_routed.pb -rpx system_wrapper_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
450*coretcl2?
bE:/VIVADO_FPGA/RedPitaya_v1.0/RedPitaya_v1.0.runs/impl_1/system_wrapper_methodology_drc_routed.rptbE:/VIVADO_FPGA/RedPitaya_v1.0/RedPitaya_v1.0.runs/impl_1/system_wrapper_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_power -file system_wrapper_power_routed.rpt -pb system_wrapper_power_summary_routed.pb -rpx system_wrapper_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_power -file system_wrapper_power_routed.rpt -pb system_wrapper_power_summary_routed.pb -rpx system_wrapper_power_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2812default:default2
802default:default2
812default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
%s4*runtcl2}
iExecuting : report_route_status -file system_wrapper_route_status.rpt -pb system_wrapper_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file system_wrapper_timing_summary_routed.rpt -pb system_wrapper_timing_summary_routed.pb -rpx system_wrapper_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
?
UpdateTimingParams:%s.
91*timing2R
> Speed grade: -1, Delay Type: min_max, Timing Stage: Requireds2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 
?
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2"
timing summary2default:defaultZ38-282h px? 
?
%s4*runtcl2k
WExecuting : report_incremental_reuse -file system_wrapper_incremental_reuse_routed.rpt
2default:defaulth px? 
x
TNo incremental reuse to report, no incremental placement and routing data was found.278*	vivadotclZ4-545h px? 
?
%s4*runtcl2k
WExecuting : report_clock_utilization -file system_wrapper_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file system_wrapper_bus_skew_routed.rpt -pb system_wrapper_bus_skew_routed.pb -rpx system_wrapper_bus_skew_routed.rpx
2default:defaulth px? 
?
UpdateTimingParams:%s.
91*timing2R
> Speed grade: -1, Delay Type: min_max, Timing Stage: Requireds2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 


End Record