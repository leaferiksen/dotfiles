# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
export PATH="$HOME/.local/bin:$PATH"

export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/gcr/ssh

export QT_QPA_PLATFORMTHEME="kde"
export ELECTRON_OZONE_PLATFORM_HINT="auto"
