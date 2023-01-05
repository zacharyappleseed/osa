# returns a string converted to all uppercase

on run
	set exampleString to "abc"
	return convertToUpperCase(exampleString)
end run

on convertToUpperCase(theString)
	set UPPERCASE to "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	set lowercase to "abcdefghijklmnopqrstuvwxyz"
	set AppleScript's text item delimiters to " "
	set theWords to text items of theString as list
	set AppleScript's text item delimiters to ""
	set newList to {}
	repeat with theWord in theWords
		set chrs to characters of theWord
		set Nchrs to count chrs -- get the number of characters
		repeat with K from 1 to Nchrs
			if (item K of chrs) is in lowercase then
				set olc to offset of (item K of chrs) in lowercase
				set item K of chrs to character olc of UPPERCASE
			end if
		end repeat
		set end of newList to chrs as string
	end repeat
	set AppleScript's text item delimiters to " "
	set theString to newList as string
	set AppleScript's text item delimiters to ""
	return theString
end convertToUpperCase