# /bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
docker build -t citrix:icaclient_13.10.0.20_amd64 .
