#!/bin/bash

source ../etc/env_config
# Delete user's home including PC2
rm -rf /home/$USER_NAME
mkdir /home/$USER_NAME
mkdir /home/$USER_NAME/Desktop

# Solve dependency issue
apt-get -f install --yes

# Remove old jdk
apt-get remove openjdk-7* --yes

# Remove old gcc g++
apt-get remove gcc g++ --yes

# Remove old codeblocks
apt-get remove codeblocks --yes

# Remove old eclipse
apt-get remove eclipse --yes

# Remove old netbeans
rm -rf /usr/local/netbeans-8.0.2

# Remove old vim emacs
apt-get remove vim emacs --yes
