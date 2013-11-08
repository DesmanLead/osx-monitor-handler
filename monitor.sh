osascript -e 'tell application "System Preferences"
    reveal anchor "mouseTab" of pane id "com.apple.preference.mouse"
end tell
tell application "System Events" to tell process "System Preferences"
    click checkbox 1 of window 1
end tell
quit application "System Preferences"
tell application "System Events"
	tell dock preferences
		set properties to {screen edge:bottom}
	end tell
end tell'