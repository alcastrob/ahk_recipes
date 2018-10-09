;Autohotkey script for remapping the Ctrl+Alt+Arrow keys in order to
;manage better the movements o between desktops in my laptop

#SingleInstance force
SetTitleMatchMode, RegEx

;Map Ctrl+Alt+Right to Ctrl+Win+Right
^!Right::
Send, {Ctrl Down}{LWin Down}{Right Down}{Right Up}{LWin Up}{Ctrl Up}
return

;Map Ctrl+Alt+Left to Ctrl+Win+Left
^!Left::
Send, {Ctrl Down}{LWin Down}{Left Down}{Left Up}{LWin Up}{Ctrl Up}
return

; Map Win+Space to play/pause only on VLC. This method is "playlist window" proof.
#space::  
IfWinNotExist VLC$
    return
; Otherwise, the above has set the "last found" window for use below.
ControlSend, ahk_parent, {space}  ; Pause/Unpause
return