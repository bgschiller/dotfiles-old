
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH" #coreutils w/o g prefix
PATH="/usr/local/bin:$PATH" #homebrew path
PATH="/usr/local/share/python:$PATH" #pip-installed executables
PATH="/usr/local/opt/ruby/bin:$PATH" #gem-installed executables
PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH" #Postgres.app path
PATH="$HOME/bin:$PATH"
export PATH

MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export MANPATH

PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
PYTHONPATH=/usr/local/lib/python:$PYTHONPATH
export PYTHONPATH

source /usr/local/bin/virtualenvwrapper.sh

