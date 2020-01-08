#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; A script by Zack Webster

^LWin::
	send,^c
	sleep 150
	url := "google.com/search?q=" . StrReplace(clipboard, A_Space, "+")
Run, chrome.exe %url%
return
