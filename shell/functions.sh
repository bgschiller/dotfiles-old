
# gem install terminal-notifier
# more info at https://github.com/alloy/terminal-notifier
notify(){
	if [ -z $1 ]; then
		MESSAGE="Done with Task"
	else
		MESSAGE="$@"
	fi
	terminal-notifier -message "$MESSAGE" -sound default
}