Demonstrating using ansible & supervisord to manage services.

Try it out:

    git clone https://github.com/eggsby/ansible-supervisor-example && cd ansible-supervisor-example
    git submodule init
    ansible-playbook -c local -i 'localhost,' [playbook.yaml](https://github.com/eggsby/ansible-supervisor-example/blob/master/playbook.yaml)

Now you should have a web server running at port 5678. Cool!

    touch ~/public/web/ansible-rocks
    curl localhost:5678

Some aliases were installed to make it easier to work with supervisor for managing your services.

    . ~/.bashrc
    supervisorctl status

Let's make a change to our service...

    ansible-playbook -c local -i 'localhost,' playbook.yaml -e port=1234
    curl localhost:1234
    # ansible-rocks
