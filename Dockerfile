FROM ubuntu:18.04
MAINTAINER Sebastian Röglinger <sebastian@roeglinger.de>

COPY icaclient_13.9.1.6_amd64.deb /tmp/icaclient.deb
COPY install.sh /tmp
RUN /tmp/install.sh
CMD /opt/Citrix/ICAClient/selfservice
