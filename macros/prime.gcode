;
;
;   prime.gcode
;       Primes/Purges the extruder to ensure clean colour switch
;
;






; Setup extruder
M906 E1050		; Set E axis current for extruding
G92 E0          ; Zero extruder

; Prime the nozzle
M83
G90
G92 E0
G1 X240 E10 F4000.000
G1 Y207 
G1 X10 E12
G1 Y205
G1 X240 E12
G1 Y203 E-20
G1 E20
G1 X10 E12
G1 Y201 E-20
G1 E20
G1 X240 E10
G1 Y199
G1 X10 E9