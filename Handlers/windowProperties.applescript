
set appOfInterest to "Safari"

tell application "System Events"
	get properties of window 1 of application process appOfInterest
end tell

