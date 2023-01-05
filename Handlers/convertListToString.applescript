on run
	set myList to {"1.0", "1.1", "1.2"}
	set delimiter to ", "
	return convertListToString(myList, delimiter)
end run

on convertListToString(myList, delimiter)
	
	
	set saveTID to AppleScript's text item delimiters
	set AppleScript's text item delimiters to delimiter
	set returnString to myList as text
	set AppleScript's text item delimiters to saveTID
	return returnString
	
end convertListToString