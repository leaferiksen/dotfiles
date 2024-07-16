# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
export PATH="$HOME/.local/bin:$PATH"

export SSH_ASKPASS=/usr/bin/ksshaskpass
export SSH_ASKPASS_REQUIRE=prefer

export QT_QPA_PLATFORMTHEME="kde"
export ELECTRON_OZONE_PLATFORM_HINT="auto"
