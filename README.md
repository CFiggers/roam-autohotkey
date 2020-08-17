# roam-autohotkey
A series of scripts for automating Roam Research tasks on Windows.

# Download AutoHotkey
To run the scripts in this repo, you'll need to have [AutoHotkey](https://www.autohotkey.com/). See the [AutoHotkey Beginner Tutorial](https://www.autohotkey.com/docs/Tutorial.htm) for detailed steps on how to install and an overview of some basic concepts.

# [copy-to-roam](https://github.com/OverWilliam/roam-autohotkey/blob/master/copy-to-roam.ahk)

This extremely simple script copies highlighted text, sends the Windows Alt+Tab keyboard shortcut to switch to the previous window, and then pastes whatever is in the clipboard:

![gif example of copy-to-roam](https://github.com/OverWilliam/roam-autohotkey/blob/master/gifs/copy-to-roam-example.gif)

Will work OS-wide, not just for Roam, but is not smart enough to select a specific window. It just switches to the previous window from wherever the shortcut is triggered. Currently keyed to Alt + V (configurable by changing the first line in the script; see comment).
