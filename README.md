## Using [ansible](http://ansibleworks.com) & [supervisord](http://supervisord.org) to manage services.

The included [playbook](https://github.com/eggsby/ansible-supervisor-example/blob/master/playbook.yaml) uses the [supervise](https://github.com/eggsby/ansible-supervise) role to install & run a simple python http service.

### Try it out:

First, install [ansible](http://docs.ansible.com/intro_installation.html) and [vagrant](https://docs.vagrantup.com/v2/installation/index.html)

Then:

    git clone https://github.com/eggsby/ansible-supervisor-example
    cd ansible-supervisor-example
    ./setup.sh

Now you should have a web server running in a VM, accessible through port 8080

Cool!

It is easy to use supervisor to manage your services

    vagrant ssh -c '~/bin/supervisorctl status'
    vagrant ssh -c 'seq 3 > ~/public/web/index.html'
    curl localhost:8080
    vagrant ssh -c '~/bin/supervisorctl stop webserver'
    curl localhost:8080
