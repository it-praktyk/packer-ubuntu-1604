#!/bin/bash -eux

if [ $1 == "true" ]; then
    # Install Ansible repository.
    apt-get -y -qq update && apt-get -y upgrade
    apt-get -y -qq install software-properties-common
    apt-add-repository ppa:ansible/ansible

    # Install Ansible.
    apt-get -y -qq update
    apt-get -y -qq install ansible git
else
    echo "Ansible will not be installed install_ansible <> true."
fi
