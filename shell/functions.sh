
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

shuffle() { 
    awk 'BEGIN{srand();} {printf "%06d %s\n", rand()*1000000, $0;}' | sort -n | cut -c8-
}
