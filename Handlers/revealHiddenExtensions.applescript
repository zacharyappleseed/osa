
on run argv
	
	if (count of argv) = 0 then
		set theFolder to choose folder
	else if (count of argv) = 1 then
		set theFolder to convertPathToAlias(item 1 of argv)
	else if (count of argv) > 1 then
		return "too many inputs. maybe put your argument in quotes."
	end if
	setHiddenExtensions(theFolder, false)
end run

on setHiddenExtensions(theFolder, booleanValue)
	tell application "Finder"
		set theFiles to items of theFolder
		set fileCount to count of theFiles
		repeat with x from 1 to fileCount
			
			set theFile to (item x of theFiles)
			if name of theFile contains "." then
				tell application "Finder"
					set extension hidden of theFile to booleanValue
				end tell
			end if
			
		end repeat
	end tell
	
	
end setHiddenExtensions

on convertPathToAlias(thePath)
	tell application "System Events"
		try
			return (path of disk item (thePath as string)) as alias
		on error
			return (path of disk item (path of thePath) as string) as alias
		end try
	end tell
end convertPathToAlias