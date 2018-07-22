FROM ubuntu:18.04
COPY icaclient_13.10.0.20_amd64.deb /tmp/icaclient.deb
COPY install.sh /tmp
RUN /tmp/install.sh
CMD /opt/Citrix/ICAClient/selfservice
