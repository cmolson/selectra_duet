


; Setup extruder
M906 E1300		; Set E axis current for pulling
G92 E0          ; Zero extruder


; Perform tip shaping
;G92 E0 		                        ; Zero E
;G90                                 ; Set abosulute positioning
;G1 Z[next_position_z] X25 E60 F8500 ; Undo nozzle lift, 
;G91                      			; Set to relative positioning

; Pull into splitter
G92 E0 		        ; Zero E
G1 E-580  F1000     ; Retract 580mm *SLOWLY*
G92 E0              ; Zero E
M84 E               ; Disable extruder