osascript -e '
-- Scroll direction
tell application "System Preferences"
	set current pane to pane "com.apple.preference.trackpad"
end tell

tell application "System Events"
	tell application process "System Preferences"
		tell tab group 1 of window 1
			click radio button 2
			if value of checkbox 1 is 1 then
				click checkbox 1
			end if
		end tell
	end tell
end tell

tell application "System Preferences"
	quit
end tell

-- Dock position
tell application "System Events"
	tell dock preferences
		set properties to {screen edge:bottom}
	end tell
end tell'