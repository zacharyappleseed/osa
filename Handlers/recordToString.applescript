set inputrecord to {test_a:"hello", test_b:"world"}

return recordToString(inputrecord)

on recordToString(inputrecord)
	try
		inputrecord as string
	on error error_message
		set AppleScript's text item delimiters to " into type string."
		set record_text to item 1 of text items of error_message
		set record_text to "filler " & record_text
		set AppleScript's text item delimiters to "Can’t make "
		
		set record_text to text items of record_text
		set record_text to item 2 of text items of record_text
		
		set AppleScript's text item delimiters to " "
		
		return record_text
	end try
	
end recordToString