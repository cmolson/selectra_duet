;
;
;   load.gcode
;       Loads filament from the switcher into the hot end
;


M116    ; Wait for temperature

; Setup extruder
M906 E1300		; Set E axis current for pushing
G92 E0          ; Zero extruder

; Push filament out of splitter
M83                 ; Set relative extruder positioning
G1 E1 F8500	        ; Kick at fast feedrate
G1 E120 F300		; Get past splitter
G1 E570 F2000	    ; Push down bowden tube
G1 E90 F200	    ; Push into extruder
M82                 ; Set absolute extruder positioning
M906 E1050		    ; Decrease extruder current

