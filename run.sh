# /bin/bash
open -a xQuartz

IPADDR=$(ipconfig getifaddr en0)

xhost + $IPADDR
docker run -ti --rm -e DISPLAY=$IPADDR:0 -v /private/tmp/.X11-unix/:/tmp/.X11-unix citrix:icaclient_13.10.0.20_amd64
