;Youtube Timestamp Grabber
!o::
    Clipboard = 
    SendInput, ^a
    SendInput, ^c
    ClipWait 0 ;pause for Clipboard data
    RegExMatch(Clipboard, "[\d\:]+ / [\d\:]+" , timeStamp)
    subTS := StrSplit(timeStamp, " / ")[1]
    Sleep 20
    Clipboard := subTS
    CoordMode, Mouse, Screen
    MouseGetPos, StartX, StartY
    CoordMode, Mouse, Window
    MouseClick, Left, 30, 450 
    DllCall("SetCursorPos", "int", StartX, "int", StartY)
Return