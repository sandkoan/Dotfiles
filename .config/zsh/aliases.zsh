alias rm='rm -I'
alias vim='nvim'

# if type exa 2>/dev/null; then
# alias ls='exa'
# alias l='exa -l --all --group-directories-first --git'
# alias ll='exa -l --all --all --group-directories-first --git'
# alias lt='exa -T --git-ignore --level=2 --group-directories-first'
# alias llt='exa -lT --git-ignore --level=2 --group-directories-first'
# alias lT='exa -T --git-ignore --level=4 --group-directories-first'
# else
alias l='ls -lahCF'
alias ll='ls -alF'
alias la='ls -A'
# fi

alias cls='clear'

# if you run clear, every 10th time run asciiquarium
# or sl steam locomotive

# function cls() {
    # sl;
    # clear;
# }
alias config='/usr/bin/git --git-dir=/home/govindg/.cfg/ --work-tree=/home/govindg'