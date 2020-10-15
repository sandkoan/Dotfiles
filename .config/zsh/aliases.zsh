# aliases

# editors
alias vi='/usr/bin/vim'
alias vim='/usr/bin/nvim'
# terminal emacs
alias em="/usr/bin/emacsclient -nw"
# terminal is tied up
alias emacs="emacsclient -c -a ''"
# the terminal is not longer tied up with emacs
alias nemacs='emacsclient -nc'

# utils

alias top='top -u $USER'  

if command -v nvim &> /dev/null
then
    alias diff='nvim -d'
else
    alias diff='diff --color=auto'
fi

# ls
alias ls='ls --color=auto'
alias ll='ls -AlhCF'
alias l='ls -A'
alias la='ls -A'

# lsd aliases
# alias ls='lsd'
# alias l='ls -l'
# alias la='ls -a'
# alias lla='ls -la'
# alias lt='ls --tree'

# grep

EXC_FOLDERS="{.bzr,CVS,.git,.hg,.svn,.idea,.tox}"
GREP_OPTIONS="--color=auto --exclude-dir=$EXC_FOLDERS"
alias grep="grep $GREP_OPTIONS"
alias egrep="egrep $GREP_OPTIONS"
alias fgrep="fgrep $GREP_OPTIONS"
alias sgrep="grep -R -n -H -C 5 $GREP_OPTIONS"

# TODO if you run clear, every 10th time run asciiquarium or sl steam locomotive
alias cls='clear'

alias rm='rm -I'
alias cp="cp -i"                                                # Confirm before overwriting something
alias df='df -h'                                                # Human-readable sizes
alias free='free -m'                                            # Show sizes in MB

cco() { gcc -std=c99 -g -O2 -o $1 $1.c -Wall; }
run() { cco $1 && ./$1 & fg; }

# git aliases
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias cfgs='cfg status'
alias cfga='cfg add'
alias cfgc='cfg commit'
alias cfgp='cfg push'
