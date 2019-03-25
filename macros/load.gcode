;
;
;   load.gcode
;       Loads filament from the switcher into the hot end
;

; Setup extruder
M906 E1300		; Set E axis current for pulling
G92 E0          ; Zero extruder

; Push filament out of splitter
G91                 ; Set relative positioning
G1 E1 F8500	        ; Kick at fast feedrate
G1 E522 F2000		; Get past splitter
G1 X28.88 E60 F210	; Push into hot end
M906 E1050		    ; Decrease extruder current
