#!/bin/bash

# enable ssh
sudo systemctl enabled sshd --now

# update all packages
sudo dnf update -y

# install ansible
sudo dnf install -y ansible
