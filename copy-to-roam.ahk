!v:: ; Change this line before the colons to get a new keyboard shortcut. ! = Alt, ^ = Ctrl, + = Shift.
  SendInput, ^c
  ClipWait, 0
  Sleep 100
  SendInput, {AltDown}{Tab}{AltUp}
  Sleep 300
  SendInput, ^v
  SendInput {Enter}
Return