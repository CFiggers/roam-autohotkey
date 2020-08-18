ReplFunc(thisthing){
  content := thisthing

  restrings := {"Gen": "Genesis"
               ,"Ex": "Exodus"
               ,"Exod": "Exodus"
               ,"Lev": "Leviticus"
               ,"Num": "Numbers"
               ,"Deut": "Deuteronomy"
               ,"Josh": "Joshua"
               ,"Judg": "Judges"
               ,"Rt": "Ruth"
               ,"1 Sam": "1 Samuel"
               ,"2 Sam": "2 Samuel"
               ,"1 Kgs": "1 Kings"
               ,"2 Kgs": "2 Kings"
               ,"1 Kgdms": "1 Kings"
               ,"2 Kgdms": "2 Kings"
               ,"1 Chr": "1 Chronicles"
               ,"2 Chr": "2 Chronicles"
               ,"1 Chron": "1 Chronicles"
               ,"2 Chron": "2 Chronicles"
               ,"Ez": "Ezra"
               ,"Neh": "Nehemiah"
               ,"Esth": "Esther"
               ,"Ps": "Psalm"
               ,"Pss": "Psalms"
               ,"Prov": "Proverbs"
               ,"Eccl": "Ecclesiastes"
               ,"Song": "Song of Solomon"
               ,"Isa": "Isaiah"
               ,"Jer": "Jeremiah"
               ,"Lam": "Lamentations"
               ,"Ezek": "Ezekiel"
               ,"Dan": "Daniel"
               ,"Hos": "Hosea"
               ,"Obad": "Obadiah"
               ,"Mic": "Micah"
               ,"Nah": "Nahum"
               ,"Hab": "Habakkuk"
               ,"Zeph": "Zephaniah"
               ,"Hag": "Haggai"
               ,"Zech": "Zechariah"
               ,"Mal": "Malachi"
               ,"Matt": "Matthew"
               ,"Mt": "Matthew"
               ,"Mk": "Mark"
               ,"Lk": "Luke"
               ,"Jn": "John"
               ,"Rom": "Romans"
               ,"1 Cor": "1 Corinthians"
               ,"2 Cor": "2 Corinthians"
               ,"Gal": "Galatians"
               ,"Eph": "Ephesians"
               ,"Phil": "Philippians"
               ,"Col": "Colossians"
               ,"1 Thess": "1 Thessalonians"
               ,"2 Thess": "2 Thessalonians"
               ,"1 Tim": "1 Timothy"
               ,"2 Tim": "2 Timothy"
               ,"Phlm": "Philemon"
               ,"Heb": "Hebrews"
               ,"1 Pet": "1 Peter"
               ,"2 Pet": "2 Peter"
               ,"Jas": "James"
               ,"Rev": "Revelation"
               ,"JOS": "Joshua"
               ,"1SA": "1 Samuel"
               ,"2SA": "2 Samuel"
               ,"1KI": "1 Kings"
               ,"2KI": "2 Kings"
               ,"1CH": "2 Chronicles"
               ,"2CH": "1 Chronicles"
               ,"EZR": "Ezra"
               ,"EST": "Esther"
               ,"JOB": "Job"
               ,"PSA": "Psalm"
               ,"PRO": "Proverbs"
               ,"ECC": "Ecclesiastes"
               ,"EZE": "Ezekiel"
               ,"ZEC": "Zechariah"
               ,"MAT": "Matthew"
               ,"MAR": "Mark"
               ,"LUK": "Luke"
               ,"ROM": "Romans"
               ,"ACT": "Acts"
               ,"1CO": "1 Corinthians"
               ,"2CO": "2 Corinthians"
               ,"PHI": "Philippians"
               ,"1TH": "1 Thessalonians"
               ,"2TH": "2 Thessalonians"
               ,"1TI": "1 Timothy"
               ,"2TI": "2 Timothy"
               ,"TIT": "Titus"
               ,"1PE": "1 Peter"
               ,"2PE": "2 Peter"
               ,"JAS": "James"
               ,"1JO": "1 John"
               ,"2JO": "2 John"
               ,"3JO": "3 John"
               ,"Jn": "John"
               ,"JOH":"John"
               ,"JOHN": "John"}

  suffixes := {"\. ": " "
              ," ": " "
              ,";": ";"}
  

  for suf_in, suf_out in suffixes
    for abbrev_in, abbrev_out in restrings
        {
        goesIn := "i)" . "([\(\[ ])" . abbrev_in . suf_in
        comesOut := "$1" . abbrev_out . suf_out
        content := RegExReplace(content, goesIn, comesOut)
        }

  books :=["Genesis"
          ,"Exodus"
          ,"Leviticus"
          ,"Numbers"
          ,"Deuteronomy"
          ,"Joshua"
          ,"Judges"
          ,"Ruth"
          ,"1 Samuel"
          ,"2 Samuel"
          ,"1 Kings"
          ,"2 Kings"
          ,"1 Chronicles"
          ,"2 Chronicles"
          ,"Ezra"
          ,"Nehemiah"
          ,"Esther"
          ,"Job"
          ,"Psalm"
          ,"Proverbs"
          ,"Ecclesiastes"
          ,"Song of Solomon"
          ,"Isaiah"
          ,"Jeremiah"
          ,"Lamentations"
          ,"Ezekiel"
          ,"Daniel"
          ,"Hosea"
          ,"Joel"
          ,"Amos"
          ,"Obadiah"
          ,"Jonah"
          ,"Micah"
          ,"Nahum"
          ,"Habakkuk"
          ,"Zephaniah"
          ,"Haggai"
          ,"Zechariah"
          ,"Malachi"
          ,"Matthew"
          ,"Mark"
          ,"Luke"
          ,"John"
          ,"Acts"
          ,"Romans"
          ,"1 Corinthians"
          ,"2 Corinthians"
          ,"Galatians"
          ,"Ephesians"
          ,"Philippians"
          ,"Colossians"
          ,"1 Thessalonians"
          ,"2 Thessalonians"
          ,"1 Timothy"
          ,"2 Timothy"
          ,"Titus"
          ,"Philemon"
          ,"Hebrews"
          ,"James"
          ,"1 Peter"
          ,"2 Peter"
          ,"1 John"
          ,"2 John"
          ,"3 John"
          ,"Jude"
          ,"Revelation"]

  for index, book in books    
      {
        find := book . " ([0-9]+)" . "([,\. :\);])"
        repl := "[[" . book . " $1" . "]]" . "$2"
        ; MsgBox, Looking for %find%
        content := RegExReplace(content, find, repl) 
      }

  return content
}

!s::
 Clipboard =
 SendInput, ^c
 ClipWait 0 ;pause for Clipboard data
 Clipboard := ReplFunc(Clipboard)
 SendInput, ^v
Return