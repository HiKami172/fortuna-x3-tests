﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Path = %A_ScriptDir%
Parent := SubStr(Path, 1, InStr(SubStr(Path,1,-1), "\", 0, 0)-1)

Run, setup.exe, %Parent%\FortunaInstall
Sleep, 2000

Send {Down 2}{Enter}
Sleep, 500

Send {Enter}
Sleep, 500

Send {Enter}
WinWaitActive, Agfa Fortuna v 13.0 - InstallShield Wizard, Finish
WinActivate, Agfa Fortuna v 13.0 - InstallShield Wizard
Send {Enter}
return