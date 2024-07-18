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
# kde settings for qt theming
export QT_QPA_PLATFORMTHEME="kde"
# hide zed's csd
export ZED_WINDOW_DECORATIONS=server
