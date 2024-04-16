# api summary
## adds summary for all miners - based on Oinks-API monitoring

https://github.com/Oink70/Android-Mining/tree/main/monitoring

read Oink's README.md first!!

thx Oink :D

tailored to my needs, each miner is now in MHs (mega hash / s)

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

change to your IP and port

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
in color

```
...
["long_name","192.168.100.193","luckpool","4.176"]
["short    ","192.168.100.194","luckpool","4.267"]
["S8z      ","192.168.100.195","luckpool","4.092"]
[" ALL","PHONES ="," 361.106 "," MHs "]
[" active ="," 91 "," inactive ="," 2 "]
[" VRSC/day ="," 2.76 "," USDT/day ="," 3.01 "]
[" time ="," 20:08:28 "," iteration ="," 394 "]
```
