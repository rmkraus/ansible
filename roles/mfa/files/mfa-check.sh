#!/bin/bash

if [ ! -e ~/.google_authenticator ]; then
        /usr/bin/google-authenticator -t -f -l pluto.lab.rmkra.us -d -w 3 -r 3 -R 30
        /usr/bin/killall -u $USER
fi
