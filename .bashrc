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
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/gcr/ssh

# Pagination for Long Lists of Files
# Remember columns for subprocesses.
export COLUMNS

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

alias u='sudo dnf update -y && flatpak update -y'

function gcp() {
    git commit -am "$1" && git push
}

function l() {
    command ls -shvANC --color=always --group-directories-first "$@" | less -R -X -F
}
function ll() {
    command ls -lvAN --group-directories-first "$@" | less -R -X -F
}
function t() {
    cd "$@" && l
}
function s() {
    cd "$@" && ll
}
