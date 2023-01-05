# return the results of a shell script

on run
	
	return runShellScript()
	
end run


on runShellScript()
	
	set currentscript to "ls /Applications/"
	
	set shellResults to do shell script currentscript without altering line endings
	
	return shellResults
	
end runShellScript

(*
--> Result:
"App Store.app
Automator.app
Calculator.app
Calendar.app
..."
*)