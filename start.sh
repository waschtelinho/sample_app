#!/bin/bash

osascript 2>/dev/null <<EOF
	tell application "System Events"
		tell process "Terminal" to keystroke "t" using command down
	end
	tell application "Terminal"
		activate
		do script with command "cd ~/Projekte/sample_app" in window 1
	end
	tell application "Terminal"
		activate
		do script with command "rvm use 1.9.2" in window 1
	end
	tell application "Terminal"
		activate
		do script with command "rails server" in window 1
	end
	
	tell application "System Events"
		tell process "Terminal" to keystroke "t" using command down
	end
	tell application "Terminal"
		activate
		do script with command "cd ~/Projekte/sample_app" in window 1
	end
	tell application "Terminal"
		activate
		do script with command "rvm use 1.9.2" in window 1
	end
	tell application "Terminal"
		activate
		do script with command "bundle exec spork" in window 1
	end
	
	tell application "System Events"
		tell process "Terminal" to keystroke "t" using command down
	end
	tell application "Terminal"
		activate
		do script with command "cd ~/Projekte/sample_app" in window 1
	end
	tell application "Terminal"
		activate
		do script with command "rvm use 1.9.2" in window 1
	end
	tell application "Terminal"
		activate
		do script with command "autotest" in window 1
	end tell
EOF