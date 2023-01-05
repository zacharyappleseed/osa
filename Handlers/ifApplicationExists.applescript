# returns true if application exists

on run
	set appOfInterest to "blah"
	applicationExists(appOfInterest)
end run

on applicationExists(appOfInterest)
	set doesExist to false
	try
		do shell script "osascript -e 'exists application \"" & appOfInterest & "\"'"
		set doesExist to true
	end try
	
	return doesExist
end applicationExists