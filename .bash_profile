# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
export QT_QPA_PLATFORMTHEME="kde"
export ELECTRON_OZONE_PLATFORM_HINT="auto"
export PATH="$HOME/.local/bin:$PATH"
