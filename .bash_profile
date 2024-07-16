# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
# local binaries
export PATH="$HOME/.local/bin:$PATH"
# ssh keys in gnome secrets
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/gcr/ssh
# kde is in charge of it's own theming
export QT_QPA_PLATFORMTHEME="kde"
