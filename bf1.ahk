#SingleInstance, Force
;#IfWinActive, ahk_exe bf1.exe
SetKeyDelay, 0, 50
#NoEnv
SendMode Input
#MaxThreadsPerHotkey 2
SetWorkingDir %A_ScriptDir%
Gui, Font, s13
Gui, Add, Text, x20 y25, BATTLEFIELD 1 PANEL
Gui, Add, Text, x20 y45,
myImage = %A_Temp%\drStrange.png
Gui, Add, Picture, w208 h150, %myImage%
Gui, Add, CheckBox, x20 y250 Checked vCheck1 gAutoWalk, AutoWalk
Gui, Add, CheckBox, x20 y270 Checked vCheck2 gAutoSpot, AutoSpot
Gui, Add, CheckBox, x20 y290 vCheck3 gDropDoubleHeal, DropDoubleHeal
Gui, Show, w250 h350, BF1 Panel

return


firstOption = 0
secondOption = 0
thirdOption = 0
return

AutoWalk:
Gui, Submit, NoHide
if (Check1==1) {
firstOption = 1
} else if (Check1==0){
	firstOption = 0
}
return

AutoSpot:
Gui, Submit, NoHide
if (Check2==1) {
secondOption = 1
} else if (Check2==0){
	secondOption = 0
}
return

DropDoubleHeal:
Gui, Submit, NoHide
if (Check3==1) {
thirdOption = 1
} else if (Check3==0){
	thirdOption = 0
}
return





; AutoWalk
end::
if (firstOption==1) {
Toggle := !Toggle
If Toggle
	Send {w Down}
else
	Send {w Up}
return
} else {
return
}


; space to ress
pgdn::
Toggle := !Toggle
If Toggle
	Send {space Down}
else
	Send {space Up}
return

; spot
~lbutton::
if(secondOption==1) {
Send {q Down}
Send {q Up}
Send {q Down}
Send {q Up}
Sleep 75
Send {q Down}
Send {q Up}
Send {q Down}
Send {q Up}
Sleep 75
Send {q Down}
Send {q Up}
Send {q Down}
Send {q Up}
Send {q Down}
Send {q Up}
return
} else if (secondOption==0) {
	return
}
return
; drop double heal
~3 up::
if (thirdOption==1) {
Sleep 350
Send {4 Down}
Sleep 75
Send {4 Down}
Sleep 75
Send {4 Down}
Sleep 75
Send {4 Down}
Sleep 75
Send {4 Down}
Sleep 75
Send {4 Down}
Sleep 100
Send {4 Up}
return
} else if (thirdOption==0) {
return
}
return


MsgBox Sexo