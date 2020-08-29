#NoTrayIcon
#SingleInstance force

Loop
{
	GetKeyState, CapsLockMode, CapsLock ,T
	if (CapsLockMode="D")
	Loop
	{
		KeyWait, Shift, D
		KeyWait, Shift, T0.5

		If ErrorLevel=0
		{
			SetStoreCapslockMode, Off
			Send {CapsLock}{Ctrl Down}{Shift Down}2{Ctrl Up}{Shift Up}
			Break
		}
		Else
		{
			KeyWait, Shift
			Break
		}
		Sleep,  50
	}
	Sleep,  50
}
