#!/bin/bash
Green='\x1B[32m'
Blue='\x1B[36m'
Magenta='\x1B[35m'
Red='\x1B[31m'
Yellow='\x1B[33m'
iGreen='\x1B[1;32m'
iBlue='\x1B[1;36m'
iMagenta='\x1B[1;35m'
iRed='\x1B[1;31m'
iYellow='\x1B[1;33m'
iWhite='\x1B[1;37m'
C_Off='\x1B[0m'
./check-all | jq -c '.[] | [.PHONE,.HOST,.POOL,.MHS]' | sed \
-e "s/null/${Red}&${C_Off}/g" \
-e "s/\"0\./${Red}&${Red}/g" \
-e "s/\"1\./${iRed}&${iRed}/g" \
-e "s/\"2\./${iYellow}&${iYellow}/g" \
-e "s/mrr/${Green}&${C_Off}/g" \
-e "s/de.vipor.net/${Yellow}&${C_Off}/g" \
-e "s/luckpool/${Blue}&${C_Off}/g" \
-e "s/eu.cloudiko.io/${Magenta}&${C_Off}/g" \
-e "s/pool.verus.io/${Red}&${C_Off}/g" \
-e "s/zerg-solo/${Green}&${C_Off}/g" \
-e "s/all/${iRed}&${iRed}/g" \
-e "s/active/${iGreen}&${iGreen}/g" \
-e "s/VRSC\/day/${iYellow}&${iYellow}/g" \
-e "s/USDT\/day/${iBlue}&${iBlue}/g" \
-e "s/time/${iMagenta}&${iMagenta}/g" \
-e "s/]/${C_Off}&${C_Off}/g" \
 | column
