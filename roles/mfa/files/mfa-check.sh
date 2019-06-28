#!/bin/bash

MAKE_2FA=1

if [[ $UID -eq 0 ]]; then
        MAKE_2FA=0
fi

if [[ $(echo $USER | grep -c '^service-') -eq 1 ]]; then
        MAKE_2FA=0
fi

if [ -e ~/.google_authenticator ]; then
        MAKE_2FA=0
fi

if [[ $MAKE_2FA -eq 1 ]]; then
        /usr/bin/google-authenticator -t -f -l pluto.lab.rmkra.us -d -w 3 -r 3 -R 30
        exit
fi
