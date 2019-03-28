#!/bin/bash
SUBNET="192.168.4"
IP=""

cd $(dirname $0)

function find_next_ip() {
    for i in {100..254}; do
        ping -c 1 -W 1 ${SUBNET}.${i} &> /dev/null
        if [ "$?" -eq "1" ]; then
            grep -R ${SUBNET}.${i} ../hosts/* &> /dev/null
            if [ "$?" -eq "1" ]; then
                break
            fi
        fi
    done

    if [ "$i" -eq 254 ]; then
        exit
    fi

    IP=${SUBNET}.${i}
}

find_next_ip
echo $IP
