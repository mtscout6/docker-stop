#!/bin/bash

#ping google.com

# Some signal is sent to top and it stops just fine, however non of the traps in this script are called...
# exec top

function shutdown {
  echo Handling TERM
  kill -s SIGTERM $PID
  wait $PID
  echo Trapped TERM
}

#top &
ping google.com &
PID=$!

trap "echo Trapped KILL" KILL
trap shutdown TERM
trap "echo Trapped INT" INT
trap "echo Trapped HUP" HUP
trap "echo Trapped STOP" STOP
trap "echo Trapped QUIT" QUIT
trap "echo Trapped EXIT" EXIT

wait $PID
