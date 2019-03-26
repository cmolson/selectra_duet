;
;
;   unlog.gcode
;       Retracts filament to before splitter
;       
;   *Change the total filament distance to 
;



M116    ; Wait for temperature

; Setup extruder
M906 E1300		; Set E axis current for pulling
G92 E0          ; Zero extruder

M83                 ; Set relative extruder positioning

; Perform tip shaping
G92 E0 		        ; Zero E
G1 E15 F400          ; Push filament in a bit
G1 E-60 F8000       ; quickly pull 10mm
G1 E-560 F1300
G1 E-140 F300
G92 E0              ; Zero E
M82                 ; Set absolute extruder positioning
M84 E               ; Disable extruder