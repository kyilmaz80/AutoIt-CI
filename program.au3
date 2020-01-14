#AutoIt3Wrapper_Change2CUI=n

Func Example($sTitle)
	; Create a GUI with various controls.
	Local $hGUI = GUICreate($sTitle)
	Local $idOK = GUICtrlCreateButton("OK", 310, 370, 85, 25)

	; Display the GUI.
	GUISetState(@SW_SHOW, $hGUI)
	Return $hGUI
EndFunc   ;==>Example

; do things
ConsoleWrite("Compiled Program Test" & @LF)
Example("Test")
WinWaitActive("Test")
If Not WinExists("Test") Then
  Exit 1
EndIf

; test status code
Exit 0
