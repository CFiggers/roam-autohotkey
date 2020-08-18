RepFunc(subString){
  done := subString
  matches := {" And ":" and "," As ":" as "," But ":" but "," For ":" for "," If ":" if "," Nor ":" nor "," Or ":" or "," So ":" so "," Yet ":" yet "," A ":" a "," An ":" an "," The ":" the "," At ":" at "," By ":" by "," In ":" in "," Of ":" of "," Off ":" off "," Om ":" on "," Per ":" per "," To ":" to "," Up ":" up "," Via ": " via "}

  for what, with in matches
    StringReplace, done, done, %what%, %with%, All

  return done
}

!b::
!n::
!m::
 keypress := SubStr(A_ThisHotkey, 2)
 Switch keypress
 {
   Case "b":
    theNum := 1
   Case "n":
    theNum := 2
   Case "m":
    theNum := 3
 }
 Clipboard =
 SendInput, ^a
 SendInput, ^x
 ClipWait 0 ;pause for Clipboard data
 StringUpper, Clipboard, Clipboard, T
 Clipboard := SubStr(Clipboard, 1, 2) . RepFunc(SubStr(Clipboard, 3))
 SendInput, ^v
 SendEvent {Ctrl down}{Alt down}{%theNum% down}
 SendEvent {Ctrl up}{Alt up}{%theNum% up}
Return