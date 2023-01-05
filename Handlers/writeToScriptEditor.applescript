# writes to a new document in Script Editor.

on run
	
	set fileName to "my new script"
	set fileContent to "say \"hello world\""
	
	writeToScriptDocument(fileName, fileContent)
	
end run

on writeToScriptDocument(fileName, fileContent)
	
	tell application "Script Editor"
		make new document with properties {name:fileName, contents:fileContent}
	end tell
	
end writeToScriptDocument