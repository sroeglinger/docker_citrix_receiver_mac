# /bin/bash
/Applications/Utilities/XQuartz.app/Contents/MacOS/X11 &

IPADDR=$(ipconfig getifaddr en0)

xhost + $IPADDR
docker run -ti --rm -e DISPLAY=$IPADDR:0 -v /private/tmp/.X11-unix/:/tmp/.X11-unix citrix:v1
