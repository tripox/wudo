if [[ -z $commands[play] ]]; then
  echo 'Sox is not installed. Please install sox first.'
  return -1
fi

function wudo() {
  sudo $*
  play `echo $ZSH`/plugins/wudo/wudo.mp3 &> /dev/null
}

alias sudo=wudo
compdef _sudo wudo
