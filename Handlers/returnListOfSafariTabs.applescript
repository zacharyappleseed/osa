# return a list of every safari tab

on run
	
	return listOfSafariTabs()
	
end run

on listOfSafariTabs()
	if application "Safari" is running then
		tell application "Safari"
			
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
					set tabName to name of tab y of window x
					set tabURL to URL of tab y of window x
					set urlText to urlText & tabURL & linefeed
					set docText to docText & "\"" & tabURL & "\"" & linefeed as string
				end repeat
				
			end repeat
		end tell
		
		return docText
	end if
end listOfSafariTabs

(*
--> Result:
"\"https://www.apple.com/\"
\"https://www.google.com/\"
\"https://www.wikipedia.org/\"
\"favorites://\"
..."
*)