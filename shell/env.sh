# Only set this if we haven't set $EDITOR up somewhere else previously.
if [[ "$EDITOR" == "" ]] ; then
  # Use sublime for my editor.
  export EDITOR='vim'
fi

# No permissions, don't bother stealing.
export HOMEBREW_GITHUB_API_TOKEN=ca5f5b692f0bc0dad5e8e16e2e271c654204868b 

export GDAL_DRIVER_PATH=/usr/local/lib/gdalplugins

export DISABLE_KEYERROR=1
