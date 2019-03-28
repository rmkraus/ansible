#!/bin/bash

# setup environment for first provision
cd $(dirname $0)/..
export ANSIBLE_REMOTE_USER=root

# run main playbook
/usr/bin/ansible-playbook --ask-pass $@ site.yml
