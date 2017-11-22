#!/bin/bash -eux

# Add vagrant user to sudoers.
echo "vagrant        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

# Disable daily apt unattended updates.
echo 'APT::Periodic::Enable "0";' >> /etc/apt/apt.conf.d/10periodic

# Select the fastest mirror for packages
# https://linuxconfig.org/how-to-select-the-fastest-apt-mirror-on-ubuntu-linux
# sudo sed -i -e 's/http:\/\/us.archive/mirror:\/\/mirrors/' -e 's/\/ubuntu\//\/mirrors.txt/' /etc/apt/sources.list
