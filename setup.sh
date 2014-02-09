#!/bin/bash

set -e

echo "checking for initial dependencies"
which ansible-playbook ansible-galaxy vagrant ||
    (echo "You need ansible and vagrant to try this out" && exit 1)

echo "installing ansible role dependencies"
mkdir -p roles
ansible-galaxy install eggsby.supervise -p roles -f

echo "starting vagrant..."
vagrant up
vagrant provision
