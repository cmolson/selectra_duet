;
;
;   unlog.gcode
;       Retracts filament to before splitter
;       
;   *Change the total filament distance to 
;


; Setup extruder
M906 E1300		; Set E axis current for pulling
G92 E0          ; Zero extruder

; Pull into splitter
G91                 ; Set relative positioning
G92 E0 		        ; Zero E
G1 E5 F8500         ; Push a little out to have pressure
G1 E-10 F8500       ; Pill quickly at the start
G1 E-580  F1000     ; Retract 580mm *SLOWLY*
G92 E0              ; Zero E
M84 E               ; Disable extruder