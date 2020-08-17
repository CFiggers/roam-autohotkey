# roam-autohotkey
A series of scripts for automating Roam Research tasks on Windows.

# Download AutoHotkey
To run the scripts in this repo, you'll need to have [AutoHotkey](https://www.autohotkey.com/). See the [AutoHotkey Beginner Tutorial](https://www.autohotkey.com/docs/Tutorial.htm) for detailed steps on how to install and an overview of some basic concepts.

# [copy-to-roam](https://github.com/OverWilliam/roam-autohotkey/blob/master/copy-to-roam.ahk)

This extremely simple script copies highlighted text, sends the Windows Alt+Tab keyboard shortcut to switch to the previous window, and then pastes whatever is in the clipboard:

![gif example of copy-to-roam](https://github.com/OverWilliam/roam-autohotkey/blob/master/gifs/copy-to-roam-example.gif)

Will work OS-wide, not just for Roam, but is not smart enough to select a specific window. It just switches to the previous window from wherever the shortcut is triggered. Currently keyed to Alt + V (configurable by changing the first line in the script; see comment).

# [youtube-timestamp](https://github.com/CFiggers/roam-autohotkey/blob/master/youtube-timestamp.ahk)

Grabs the Youtube timestamp of a currently-playing video and puts it in the clipboard ready to paste somewhere else (such as Roam). Does not pause the video and works with currently-running videos. Currently keyed to Alt + O (configurable by changing the first line in the script):

![gif example of youtube-timestamp](https://github.com/CFiggers/roam-autohotkey/blob/master/gifs/youtube-timestamp-example.gif)

Works by executing the following steps:
* Select the entire current window (Ctrl+A)
* Copy the current selection (Ctrl+C)
* Run a RegEx on the current Clipboard contents to extract the current timestamp
* Replace the Clipboard contents with the extracted timestamp
* Automatically click the mouse at a pre-set position in the current window to de-select the current window
* Return mouse to starting position

Could easily be extended to also switch from the current window (e.g. in Roam) to the window containing Youtube, grab the timestamp, automatically switch back, and automatically paste the grabbed timestamp for more Eloquent-like functionality.
