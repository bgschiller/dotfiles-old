export GOPATH=$HOME/go

PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH" #coreutils w/o g prefix
PATH="/usr/local/opt/ruby/bin:$PATH" #gem-installed executables
PATH="/usr/local/Cellar/go/1.2.1/libexec/bin:$PATH" # GOROOT-based install
PATH="$GOPATH/bin:$PATH"
PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH" #Postgres.app path
PATH="$HOME/bin:$PATH"
PATH="/usr/local/bin:$PATH" #homebrew path
export PATH

MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export MANPATH

PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
PYTHONPATH=/usr/local/lib/python:$PYTHONPATH
export PYTHONPATH



