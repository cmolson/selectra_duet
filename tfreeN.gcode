;
;
;   gcode for when a tool is de-selected
;
;
;


; Save last postion (should be done automatically)
G60 S2

M98 P"/macros/selectra/movetoprimebin.gcode"

; Unload Filament
M98 P"/macros/selectra/unload.gcode"


G90     ; Set absolute positioning