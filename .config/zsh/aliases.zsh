# aliases

alias vim='nvim'
# emacs in terminal, decent functionality, beautiful with background
alias em="emacsclient -nw"
# terminal is tied up
alias emacs="emacsclient -c -a ''"
# the terminal is not longer tied up with emacs
alias nemacs='emacsclient -nc'

alias inst='sudo pacman -S'
alias rem='sudo pacman --remove'
alias up='sudo pacman -Syu'

cco() { gcc -std=c99 -g -O2 -o $1 $1.c -Wall; }
run() { cco $1 && ./$1 & fg; }
# co() { g++ -std=c++17 -O2 -o $1 $1.cpp -Wall; }
# run() { co $1 && ./$1 & fg; }

# ls aliases
# alias ls='ls --color=auto'
# alias l='ls -lahCF --color=auto'
# alias ll='ls -alhF --color=auto'
# alias la='ls -A --color=auto'

# lsd aliases
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# grep
alias grep='grep --color=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'
alias sgrep='grep -R -n -H -C 5 --color=auto --exclude-dir={.git,.svn,CVS}'
alias hgrep='fc -El 0 | grep --color=auto'

# autocd by typing directory name
setopt auto_cd

# push old dir onto stack
setopt auto_pushd
setopt pushdminus

alias ~="cd ~"
alias ..='cd ..'
alias ...='cd ../..'
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'

# TODO if you run clear, every 10th time run asciiquarium or sl steam locomotive
alias cls='clear'

alias rm='rm -I'
alias cp="cp -i"                                                # Confirm before overwriting something
alias df='df -h'                                                # Human-readable sizes
alias free='free -m'                                            # Show sizes in MB

# git aliases
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias cfgs='config status'
alias cfga='config add'
alias cfgc='config commit -m'
alias cfgp='config push'

alias g='git'

alias ga='git add'
alias gaa='git add --all'
alias gau='git add -u'
alias gc='git commit -m'
alias gp='git push'
alias gitu='git add . && git commit && git push'
