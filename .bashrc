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

# Flatpaks
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

alias u='flatpak update -y && sudo dnf update -y'
alias dc='xdg-open "$@" '
alias gp='git push'

function gcp() {
    git commit -am "$1" && git push
}

function t() {
    cd "$@" && ls -shvANC --color=always --group-directories-first | less -R -X -F
}
function s() {
    cd "$@" && ls -lvAN --color=always --group-directories-first | less -R -X -F
}

pwd && t
