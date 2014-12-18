
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

jl() { jq '.' $1 -C | less }

# Automatically activate Git projects' virtual environments based on the
# directory name of the project. Virtual environment name can be overridden
# by placing a .venv file in the project root with a virtualenv name in it
function workon_cwd {
    # Check that this is a Git repo
    GIT_DIR=`git rev-parse --git-dir 2> /dev/null`
    if [ $? -eq 0 ]; then
        # Find the repo root and check for virtualenv name override
        GIT_DIR=`\cd $GIT_DIR; pwd`
        PROJECT_ROOT=`dirname "$GIT_DIR"`
        ENV_NAME=`basename "$PROJECT_ROOT"`
        if [ -f "$PROJECT_ROOT/.venv" ]; then
            ENV_NAME=`cat "$PROJECT_ROOT/.venv"`
        fi
        # Activate the environment only if it is not already active
        if [ "$VIRTUAL_ENV" != "$WORKON_HOME/$ENV_NAME" ]; then
            if [ -e "$WORKON_HOME/$ENV_NAME/bin/activate" ]; then
                workon "$ENV_NAME" && export CD_VIRTUAL_ENV="$ENV_NAME"
            fi
        fi
    elif [ $CD_VIRTUAL_ENV ]; then
        # We've just left the repo, deactivate the environment
        # Note: this only happens if the virtualenv was activated automatically
        deactivate && unset CD_VIRTUAL_ENV
    fi
}

# New cd function that does the virtualenv magic
function venv_cd {
    cd "$@" && workon_cwd
}

alias cd="venv_cd"

