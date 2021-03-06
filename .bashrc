# Young Seok Tony Kim's Ultimate .bashrc file


# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups

# bash history should save 3000 commands
export HISTFILESIZE=3000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# ---------------Colors--------------- #
# checks if the session does have a TTY associated with it
if tty -s; then
Black="$(tput setaf 0)"
BlackBG="$(tput setab 0)"
DarkGrey="$(tput bold ; tput setaf 0)"
LightGrey="$(tput setaf 7)"
LightGreyBG="$(tput setab 7)"
White="$(tput bold ; tput setaf 7)"
Red="$(tput setaf 1)"
RedBG="$(tput setab 1)"
LightRed="$(tput bold ; tput setaf 1)"
Green="$(tput setaf 2)"
GreenBG="$(tput setab 2)"
LightGreen="$(tput bold ; tput setaf 2)"
Brown="$(tput setaf 3)"
BrownBG="$(tput setab 3)"
Yellow="$(tput bold ; tput setaf 3)"
Blue="$(tput setaf 4)"
BlueBG="$(tput setab 4)"
LightBlue="$(tput bold ; tput setaf 4)"
Purple="$(tput setaf 5)"
PurpleBG="$(tput setab 5)"
Pink="$(tput bold ; tput setaf 5)"
Cyan="$(tput setaf 6)"
CyanBG="$(tput setab 6)"
LightCyan="$(tput bold ; tput setaf 6)"
NC="$(tput sgr0)" # No Color
fi


# Convenient script for playing with GPUs
use() {
    if [ -z $1 ]
    then
        echo "NVIDIA_VISIBLE_DEVICES: $NVIDIA_VISIBLE_DEVICES"
        echo "CUDA_VISIBLE_DEVICES: $CUDA_VISIBLE_DEVICES"
    else
        export NVIDIA_VISIBLE_DEVICES=$1
        export CUDA_VISIBLE_DEVICES=$1
    fi
}


# Custom bash prompt via kirsle.net/wizards/ps1.html
if tty -s; then
export PS1="\[$(tput bold)\]\[$(tput setaf 6)\][\[$(tput setaf 6)\]\t\[$(tput setaf 6)\]]\[$(tput setaf 5)\]\u\[$(tput setaf 1)\]@\[$(tput setaf 2)\]\h\[$(tput setaf 7)\]:\[$(tput setaf 6)\]\w \[$(tput setaf 4)\]\\$ \[$(tput sgr0)\]"
fi

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /user/share/doc/bash-doc/examples in the bash-doc package.


alias ls='ls -G'
alias sl='ls'
alias LS='ls'
alias rm='rm -i'

# Tmux command aliases
alias tn='tmux new -s'
alias tls='tmux ls'
alias tat='tmux attach -t'
alias takeover='tmux detach -a'

# Should not execute in MacOS
if [[ "$OSTYPE" != "darwin"* ]]; then
    export LS_OPTIONS='--color=auto'
    alias ls='ls $LS_OPTIONS'
fi

# This configures the colors of output of ls.
# The directories become more visible.
# This color works best with black background
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx


# GREP color options
export GREP_OPTIONS='--color=always'


#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi


