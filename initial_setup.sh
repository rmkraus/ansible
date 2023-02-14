#!/bin/bash

# enable ssh
sudo systemctl enabled sshd --now

# install ansible
sudo dnf install -y ansible
