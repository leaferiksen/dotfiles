# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
# local binaries
export PATH="$HOME/.local/bin:$PATH"
# hide zed's csd
export ZED_WINDOW_DECORATIONS=server
