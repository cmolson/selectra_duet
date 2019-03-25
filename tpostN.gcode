
; What to execute before the tool is selected
; This assumes that all filament is now behind the splitter
;
;   Selectra Mode 1
;       Extruder E0
;       CAM Selector is E1 (but mapped to C via M584)
;

; Move Selector
G90	               ; Set absolute postioning
G1 C0 F200         ; Move selector to slot 0
;G1 C10 F200       ; Move selector to slot 1
;G1 C20 F200       ; Move selector to slot 2
;G1 C30 F200       ; Move selector to slot 3
;G1 C40 F200       ; Move selector to slot 4

; Load Filament
M98 P"/macros/selectra/load.gcode"

; Prime Nozzle
M98 P"/macros/selectra/prime.gcode"

; Restore location (only X, Y, Z axis)
G1 R2 X0 Y0 Z0  ; Restore to location slot 2

