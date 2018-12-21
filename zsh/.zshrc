# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export TERM=xterm-256color

ZSH_THEME="bira"

# Use case-sensitive completion.
CASE_SENSITIVE="false"

plugins=(git,colored-man-pages,gitignore)

function source-if-exist { [ -e "$1" ] && source "$1" }

source-if-exist "$ZSH/oh-my-zsh.sh"

export PATH="$HOME/.anaconda3/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# export MANPATH="/usr/local/man:$MANPATH"

setopt autocd
#WORDCHARS=''@"
export EDITOR="vim"
_comp_options+=(globdots)
zstyle ':completion:*' menu select

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

source-if-exist "$HOME/.aliases"
