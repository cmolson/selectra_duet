;; Setup Selectra 5



M563 P0 D0 H1           ; Define tool 0
G10 P0 X0 Y0 Z0         ; Set tool 0 axis offsets
G10 P0 R0 S0            ; Set initial tool 0 active and standby temperatures to 0C

M563 P1 D0 H1           ; Define tool 1
G10 P1 X0 Y0 Z0         ; Set tool 1 axis offsets
G10 P1 R0 S0            ; Set initial tool 1 active and standby temperatures to 0C

M563 P2 D0 H1           ; Define tool 2
G10 P2 X0 Y0 Z0         ; Set tool 2 axis offsets
G10 P2 R0 S0            ; Set initial tool 2 active and standby temperatures to 0C

M563 P3 D0 H1           ; Define tool 3
G10 P3 X0 Y0 Z0         ; Set tool 3 axis offsets
G10 P3 R0 S0            ; Set initial tool 3 active and standby temperatures to 0C

M563 P4 D0 H1           ; Define tool 4
G10 P4 X0 Y0 Z0         ; Set tool 4 axis offsets
G10 P4 R0 S0            ; Set initial tool 4 active and standby temperatures to 0C



; Selector (config.g)
M584 C3 E4        ; Selector is driver 3, extruder driver 4
M906 C600	      ; Set amps for selector
M569 P4 S1        ; Drive 4 goes forwards
M92 C400          ; Steps per/mm for selector
M566 C300         ; Set maximum instantaneous speed changes (mm/min) 
M203 C200         ; Set max feedrate for selector
M201 C3000        ; Set accelerations (mm/s^2)
M915 C S10 H1 R1  ; Set stall detection on selector for homing
M574 C3 S3 C4     ; Setup endstop for selector


; Extruder (config.g)
M92 E134.58	        ; Set extruder steps/mm 
M906 E1300		    ; Set current for extruder


; Put near bottom/end of config.g
G28                 ; Home all axis such that tool change takes effect
T0                  ; Select Tool 0