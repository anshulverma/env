env
===

Quickly setup a custom environment

# Preinstall preparation

````bash
sudo gem install berkshelf -v 1.3.7
vagrant plugin install vagrant-berkshelf --plugin-version 1.3.7
vagrant plugin install vagrant-omnibus
````

# Set up using Vagrant

Bring up vagrant box
````bash
vagrant up
````

Prepare and install the cookbook using `knife`
````bash
knife solo prepare vagrant@localhost -i /home/anshul/.vagrant.d/insecure_private_key -p 2222
librarian-chef install
knife solo cook vagrant@localhost -p 2222 -i ~/.vagrant.d/insecure_private_key
````
