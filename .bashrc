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

# File Management
alias up='flatpak update -y && sudo dnf update -y'
alias dc='xdg-open'
function la() {
    clear -x
    echo -e "\e[31m$(pwd)\e[0m"
    ls -hovAN --color=always | less -FRS
}
function nt() {
    cd "$@"
    la
}
function sd() {
    cd /run/media/leaf/Leafs\ Drive
    la
}
function md() {
    mkdir -p "$(pwd)/$@"
    la
}
function mf() {
    touch "$(pwd)/$@"
    la
}

# Trash
function tl() {
    clear -x
    echo -e "\e[31mTrash\e[0m"
    trash-list
}
function tp() {
    trash-put "$@"
    la
}
function tr() {
    clear -x
    trash-restore
    tl
    echo -e "\e[31mTrash\e[0m"
}
function te() {
    trash-empty
    echo -e "\e[33mTrash Emptied! \e[0m"
}

# Git
alias gcp='git commit -a && git push'
alias ga='git add -f'
alias gp='git push'

# Terminal startup
la
