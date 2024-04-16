#!/bin/bash
refreshing=60   # refreshing time in sec
rm -f iteration.txt
echo "0" >> iteration.txt
screen -wipe 1>/dev/null 2>&1
if screen -ls | grep -i Watch; then
  printf "\n\e[93m WATCH is already running! (rwa) to see \e[0m\n"
  sleep 2
  screen -r Watch
else
  printf "\n\e[93m Starting WATCH! \e[0m\n"
  screen -S Watch -X quit 1>/dev/null 2>&1
  screen -wipe 1>/dev/null 2>&1
  screen -dmS Watch 1>/dev/null 2>&1
  screen -S Watch -X stuff "clear \n" 1>/dev/null 2>&1
  screen -S Watch -X stuff "watch -c -t -n $refreshing './watch-screen.sh'\n" 1>/dev/null 2>&1
fi
printf "\n\e[93m opening screen WATCH \e[0m\n"
printf "\n\e[93m opening with: screen -r Watch or rwa \e[0m\n"
