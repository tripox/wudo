if [[ -z $commands[play] ]]; then
  echo 'Sox is not installed. Please install sox first.'
  return -1
fi

DIR=`dirname $0`
MONTH=`date +%m`

function wudo() {
  sudo $*
  if [[ $MONTH -eq "12" ]]; then 
    (play -q $DIR/wudo-christmas.wav &)
  else
    (play -q $DIR/wudo.mp3 &)
  fi
}

alias sudo=wudo
compdef _sudo wudo
