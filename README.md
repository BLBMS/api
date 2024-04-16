# api summary
## adds summary for all miners - based on Oinks-API monitoring

https://github.com/Oink70/Android-Mining/tree/main/monitoring

read this firt!!

thx Oink

tailored to my needs

customization requires some prior programming knowledge

**no help, use at your own risk**

**if you don't know what to do, don't do anything**

______________
## config.json

```
allows access for this IP range. Adjust to your own situation.
"api-allow": "192.168.xxx.0/24",
enables the API by making it listen on the specified IP address and port. 0.0.0.0 signifies all adapters and IPs.
"api-bind": "0.0.0.0:4068"
```
______________
## spisek.list

contains the last term of the miner's IP (aaa.bbb.ccc.XXX) and name of that miner, one per line

e.g.:
```
110  S9a
111  S9b
etc.
```
______________
## watch.sh

change refreshing time (depending on the number of devices)

______________
## watch-screen.sh

change pool names (as you have set in config.json) and colors

______________
## check-all

change from my IP 192.168.100.xxx to your also port 4068

______________
## set up aliases
```bash
alias wa='~/watch.sh'                                      # start
alias rwa='screen -x Watch'                                # show screen
alias xwa='screen -S Watch -X quit 1>/dev/null 2>&1'       # stop screen
alias sl='screen -ls'                                      # list screen's
```

______________
## example

```
["S8x","192.168.100.193","luckpool","4076.74"]
["S8y","192.168.100.194","luckpool","3767.80"]
["S8z","192.168.100.195","luckpool","3929.28"]
["ALL","PHONES=","362.677","MHs"]
["active=","91","inactive=","2"]
["VRSC_24h=","3.74","USDT_24h=","3.96"]
["time=","21:12:51","iteration=","324"]
```
