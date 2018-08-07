# /bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
docker build -t sroeglinger/citrix:icaclient_13.9.1.6_amd64 .
