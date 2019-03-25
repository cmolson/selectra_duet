;
;
;   movetoprimebin.gcode
;       Moves the print head to the prime bin for prime/purge
;       
;      *Change the x,y,z to your own location



; Move to prime bin location
G90                    ; Set absolute positioning
G1 X75 Y55 Z250 F3000  ; Position of prime bin
G91                    ; Set relative positioning