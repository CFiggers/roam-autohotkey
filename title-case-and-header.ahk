RepFunc(subString){
  done := StrReplace(subString, " A ", " a ")
  done := StrReplace(done, " An ", " an ")
  done := StrReplace(done, " The ", " the ")
  done := StrReplace(done, " And ", " and ")
  done := StrReplace(done, " But ", " but ")
  done := StrReplace(done, " Or ", " or ")
  done := StrReplace(done, " For ", " for ")
  done := StrReplace(done, " Nor ", " nor ")
  done := StrReplace(done, " Of ", " of ")
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