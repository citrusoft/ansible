# ansible_on_vagrant

## Environment
The setup includes three(3) virtual machines on your host OS.
* **Controller** This is the only VM requiring Ansbile installation.  This VM is used to run the *ansible-playbooks*.
* **Database** This is the VM configured to run MySQL
* **Web Server** This is the VM configured to run NGINX web server.

## Prerequisites
* Windows or OSX or Linux
* VirtualBox
* Vagrant
* Git

## How to Setup VMs
Once you install Virtualbox, Vagrant etc, open a terminal with bash shell (ConEMU, Gitbash, iterm)
1. create a directory to isolate your work.
2. copy the Vagrantfile provided to your directory.
3. start a terminal/shell and bring up the control node
'code' vagrant up control
'code' vagrant ssh control
4. start a terminal/shell and bring up the database node
>vagrant up db
>vagrant ssh db
5. start a terminal/shell and bring up the web server node
>vagrant up www
>vagrant ssh www

Congratulations!  You should have 3 nodes setup e.g. 1 control, 1 www , 1 db. 

## To Configure the Control Node
Once logged in to the control node, install ansible using [official installation instructions here](http://docs.ansible.com/ansible/intro_installation.html)

*Please note Ansible 1.9 was the latest version available at the time of writing of this book. If you have installed a later version, specially 2.0 onwards, there are changes which may be incompatible with the examples provided in the text. Please make changes accordingly. *
> sudo apt-get update
> sudo apt-add-repository ppa:ansible/ansible
> sudo apt-get install python-pip python-dev
> sudo pip install ansible==1.9.3

## Setup SSH on the control node
Log into control node as vagrant, create your key-pair and copy public key to www and db nodes.
Use the commands within ssh-setup.bash

## Install git and clone this repo on the control node
Log into control node as vagrant...
apt-get install git
git clone <url_to_this_repo>

## Launch playbooks to configure nodes...
> ansible-playbook -i customhosts site.yml

Tommy Hunt, CEA, PMP, PSM, SAFe Program Consultant
(425)298-6551
www.citrusoft.com
PGP Public Key for encrypting Email & Attachments sent to me.
www.linkedin.com/in/citrusoft
