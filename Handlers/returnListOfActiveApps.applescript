tell application "System Events"
	set listOfProcesses to (name of every process where background only is false)
end tell

return listOfProcesses