# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Include Flatpak binaries in path
export PATH="/var/lib/flatpak/exports/bin:$PATH"

# ssh with gnome secrets
eval $(/usr/bin/gnome-keyring-daemon --start)
export SSH_AUTH_SOCK

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

alias up='flatpak update -y && sudo dnf update -y'
alias dc='xdg-open'
alias gcp='git commit -a && git push'
alias ga='git add -f'
alias gp='git push'

function nt() {
    clear -x &&
    cd "$@" &&
    echo -e "\e[31m $(pwd) \e[0m" &&
    ls -hovAN --color=always --group-directories-first | less -RF
}
function md() {
    mkdir -p "${1}"
    nt "${1}"
}

nt
