### Using [ansible](http://ansibleworks.com) & [supervisord](http://supervisord.org) to manage services.

The included [playbook](https://github.com/eggsby/ansible-supervisor-example/blob/master/supervisor.yaml) uses the [supervise](https://galaxy.ansible.com/list#/roles/13) role to install & run a simple python http service.

### Try it out:

First, install [ansible](http://docs.ansible.com/intro_installation.html) and [vagrant](https://docs.vagrantup.com/v2/installation/index.html)

Then:

    git clone https://github.com/eggsby/ansible-supervisor-example
    cd ansible-supervisor-example
    ./setup.sh

Now you should have a web server running in a VM, accessible through port 8080

It is easy to use supervisor to manage your services

    vagrant ssh -c '~/bin/supervisorctl status'
    vagrant ssh -c 'seq 3 > ~/public/web/index.html'
    curl localhost:8080
    vagrant ssh -c '~/bin/supervisorctl stop web-server'
    curl localhost:8080

Want to use the same thing on your local setup? No problem!

If you are on a debian flavor like the vagrant vm:

    ansible-playbook supervisor.yaml -e port=1234 -c local -i localhost, -K
    ~/bin/supervisorctl status
    curl localhost:1234

Cool!
