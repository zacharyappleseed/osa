# return a list of every chrome tab

on run
	
	return listOfChromeTabs()
	
end run

on listOfChromeTabs()
	if application "Google Chrome" is running then
		tell application "Google Chrome"
			
			--Variables
			set windowCount to number of windows
			set docText to ""
			set urlText to ""
			--Repeat for Every Window
			repeat with x from 1 to windowCount
				set tabcount to number of tabs in window x
				
				--Repeat for Every Tab in Current Window
				repeat with y from 1 to tabcount
					
					--Get Tab Name & URL
					set tabName to title of tab y of window x
					set tabURL to URL of tab y of window x
					set urlText to urlText & tabURL & linefeed
					set docText to docText & "\"" & tabURL & "\"" & linefeed as string
				end repeat
				
			end repeat
		end tell
		
		return docText
	end if
end listOfChromeTabs

(*
--> Result:
"\"https://www.apple.com/\"
\"https://www.google.com/\"
\"https://www.wikipedia.org/\"
\"favorites://\"
..."
*)