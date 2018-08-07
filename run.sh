# /bin/bash
open -a xQuartz

IPADDR=$(ipconfig getifaddr en0)

xhost + $IPADDR
exec docker run -ti --rm -e DISPLAY=$IPADDR:0 -v /private/tmp/.X11-unix/:/tmp/.X11-unix sroeglinger/citrix:icaclient_13.9.1.6_amd64
