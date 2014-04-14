
# gem install terminal-notifier
# more info at 
notify(){
	if [ -z $1 ]; then
		MESSAGE="Done with Task"
	else
		MESSAGE="$@"
	fi
	terminal-notifier -message "$MESSAGE" -sound default
}