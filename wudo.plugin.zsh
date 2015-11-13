if [[ -z $commands[play] ]]; then
  echo 'Sox is not installed. Please install sox first.'
  return -1
fi

DIR=`dirname $0`

function wudo() {
  sudo $*
  play $DIR/wudo.mp3 &> /dev/null
}

alias sudo=wudo
compdef _sudo wudo
