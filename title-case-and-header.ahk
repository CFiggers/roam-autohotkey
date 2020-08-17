RepFunc(subString){
  done := StrReplace(subString, " And ", " and ")
  done := StrReplace(done, " As ", " as ")
  done := StrReplace(done, " But ", " but ")
  done := StrReplace(done, " For ", " for ")
  done := StrReplace(done, " If ", " if ")
  done := StrReplace(done, " Nor ", " nor ")
  done := StrReplace(done, " Or ", " or ")
  done := StrReplace(done, " So ", " so ")
  done := StrReplace(done, " Yet ", " yet ")
  done := StrReplace(done, " A ", " a ")
  done := StrReplace(done, " An ", " an ")
  done := StrReplace(done, " The ", " the ")
  done := StrReplace(done, " At ", " at ")
  done := StrReplace(done, " By ", " by ")
  done := StrReplace(done, " In ", " in ")
  done := StrReplace(done, " Of ", " of ")
  done := StrReplace(done, " Off ", " off ")
  done := StrReplace(done, " Om ", " on ")
  done := StrReplace(done, " Per ", " per ")
  done := StrReplace(done, " To ", " to ")
  done := StrReplace(done, " Up ", " up ")
  done := StrReplace(done, " Via ", " via ")
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