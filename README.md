Demonstrating using ansible & supervisord to manage services.

Try it out:

    git clone https://github.com/eggsby/ansible-supervisor-example
    cd ansible-supervisor-example
    git submodule init && git submodule update
    ansible-playbook -c local -i 'localhost,' playbook.yaml

Now you should have a web server running at port 5678. Cool!

    echo 'ansible rocks!' > ~/public/web/index.html
    curl localhost:5678

Some aliases were installed to make it easier to work with supervisor for managing your services.

    . ~/.bashrc
    supervisorctl status

Let's make a change to our service...

    ansible-playbook -c local -i 'localhost,' playbook.yaml -e port=1234
    curl localhost:1234

cool, ansible rocks!
check out [playbook.yaml](https://github.com/eggsby/ansible-supervisor-example/blob/master/playbook.yaml) for more information
