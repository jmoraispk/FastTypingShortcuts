#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#MaxHotkeysPerInterval 200 
; Set warning for quick keys off. Allow 200 keys in 2000 ms (default interval size)
; Hence key repetition at a max of 1 per 10ms. (I use 15 ou 18 ms.)

RAlt & j::
Send {Left}
return

RAlt & k::
Send {Down}
return

RAlt & l::
Send {Right}
return

RAlt & i::
Send {Up}
return

RAlt & u::
Send {Home}
return

RAlt & o::
Send {End}
return

RAlt & ç::
Send {Delete}
return

;Ralt + a results in SHIFT + Home. 
;The + modifier means keeping shift pressed. ^ is for control.
;See Modifier Keys in https://www.autohotkey.com/docs/KeyList.htm.
RAlt & a::
Send +{Home}
return

RAlt & f::
Send +{End}
return

RAlt & s::
Send ^+{Left}
return

RAlt & d::
Send ^+{Right}
return

RAlt & w::
Send ^{Left}
return

RAlt & e::
Send ^{Right}
return


;For moving the mouse to the centre of the screen:
;From: https://superuser.com/questions/384099/

LAlt & Space::
CoordMode, Mouse, Screen
MouseMove, A_ScreenWidth/2, A_ScreenHeight/2, 0
