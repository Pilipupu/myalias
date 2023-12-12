#!/bin/bash

f=`grep g.sh  ~/.zshrc |awk -F'=' '{print $1}' | awk -F' ' '{print $2}'`
function usage() {
  echo "example1: g 172.0.0.10"
  echo "example2: g http://172.0.0.10"
}

if [ $# -lt 1 ]; then
    usage
    exit 1
fi

IPV4_REGEX="([0-9]{1,3}\\.){3}[0-9]{1,3}"
IP=$1
if [[ $IP =~ $IPV4_REGEX ]]; then
    IP=$BASH_REMATCH
fi

shift 1

ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null root@$IP $@
