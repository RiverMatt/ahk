#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#Persistent

; Written by LorenWard

#ifWinActive, ahk_exe EscapeFromTarkov.exe

*~w::
Send, {w down}
KeyWait, w
Send, {w up}
if (A_PriorHotkey = A_ThisHotkey && A_TimeSincePriorHotkey < 301) {
	Send, {w down}
	Input, var, * V,, w ; without the V parameter, the program will not 'see' any other input that could potentially match
	Send, {w up}
}
return

/* ; Uncomment to enable c to crouch, press and hold c to prone. Assumes prone hotkey is z
*c::
KeyWait, c, T0.3
if (ErrorLevel) {
	Send, z
	KeyWait, c
} else {
	Send, c
}
return
*/ 

#IfWinActive

^!+x::
ExitApp
return