;Autohotkey script for remapping the Ctrl+Alt+Arrow keys in order to
;manage better the movements o between desktops in my laptop

#SingleInstance force

;Map Ctrl+Alt+Right to Ctrl+Win+Right
^!Right::
Send, {Ctrl Down}{LWin Down}{Right Down}{Right Up}{LWin Up}{Ctrl Up}
return

;Map Ctrl+Alt+Left to Ctrl+Win+Left
^!Left::
Send, {Ctrl Down}{LWin Down}{Left Down}{Left Up}{LWin Up}{Ctrl Up}
return