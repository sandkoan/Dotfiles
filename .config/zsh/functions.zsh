function countdown() {
    date1=$((`date +%s` + (60 * $1)));
    while [ "$date1" -ge `date +%s` ]; do
        echo -ne "$(date -u --date @$(($date1 - `date +%s`)) +%H:%M:%S)\r" | lolcat -t;
        sleep 0.1
    done
}


if [ -d "/opt/shell-color-scripts" ]
then
    export PATH=$PATH:/opt/shell-color-scripts
fi

# After 100 seconds, run screen saver (either pipes or cmatrix)
TMOUT=100

PIPES() {
    x=$(shuf -n 1 -e 0 ${4-8})
    pipes.sh -t $x
}

MATRIX() {
    y=$(shuf -n 1 -e 0 1)
    if [ $y -eq 0 ]
    then 
        cmatrix -ms -C cyan
    else 
        cmatrix -s -C cyan
    fi
}

TRAPALRM() {
    n=$(shuf -n 1 -e 0 1)
    if [ $n -eq 0 ]
    then
        PIPES
    else
        MATRIX
    fi
}

# Edit line in vim with ctrl-e:
# autoload edit-command-line; zle -N edit-command-line
# bindkey '^e' edit-command-line
