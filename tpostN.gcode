
;
;  tpostN.gcode
;   Runs when a new tool has been selected
;   
;   *Assumes we are already at the purge bin
;   *Create one of these files for each tool
;     ex. tpost0.gcode, tpost1.gcode etc.
;   *Uncomment the correct G1 C0 command for the given tool
;       ex. in tpost3.gcode, comment out G1 C0 F200 and uncomment G1 C30 F200



; Move to prime bin (should be there if switching)
M98 P"/macros/selectra/movetoprimebin.gcode"

; Move Selector to correct location
G90	               ; Set absolute postioning
G1 C0 F200         ; Move selector to slot 0
;G1 C10 F200       ; Move selector to slot 1
;G1 C20 F200       ; Move selector to slot 2
;G1 C30 F200       ; Move selector to slot 3
;G1 C40 F200       ; Move selector to slot 4
G91                ; Set relative positioning

; Load Filament
M98 P"/macros/selectra/load.gcode"

; Prime Nozzle
M98 P"/macros/selectra/prime.gcode"

G90	               ; Set absolute postioning

; Restore location (only X, Y, Z axis - not C)
G1 R2 X0 Y0 Z0 F2000   ; Restore to location slot 2

