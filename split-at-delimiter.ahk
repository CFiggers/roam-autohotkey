; Create the popup menu by adding some items to it.
Menu, MyMenu, Add, split-at-delimiter, MenuHandler

return 

MenuHandler:
 Sleep 100
 Switch A_ThisMenuItem
 {
   Case "split-at-delimiter":
    oldclip := Clipboard
    Sleep 100
    SendInput, ^c
    ClipWait 0 ;pause for Clipboard data
    Sleep 100
    modstring := Clipboard
    modstring := RegExReplace(modstring, "\s*-\s*", "`n")
    Sleep 100
    Clipboard := modstring
    Sleep 100
    SendInput, ^v
    Sleep 100
    Clipboard := oldclip
 }
return

Control & RButton::Menu, MyMenu, Show  ; i.e. press the Win-Z hotkey to show the menu.