# /bin/bash
apt-get update

dpkg -i /tmp/icaclient.deb 2> /dev/null
apt-get -y -f install
dpkg -i /tmp/icaclient.deb

apt-get -y install ca-certificates

rm -rf /opt/Citrix/ICAClient/keystore/cacerts
ln -s /etc/ssl/certs /opt/Citrix/ICAClient/keystore/cacerts

#apt-get -y install net-tools iputils-ping curl firefox

#apt-get -y install apt-file
#apt-file update
