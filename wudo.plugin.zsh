if [[ -z $commands[play] ]]; then
    echo 'Sox is not installed. Please install sox first.'
    return -1
fi

set ZSH=`echo $ZSH`

function wudo {
    sudo $*
    play $ZSH/plugins/wudo/wudo.mp3 &> /dev/null
}

alias sudo=wudo
