require 'berkshelf/vagrant'

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  # Custom chef config
  config.vm.provision "chef_solo" do |chef|
    chef.custom_config_path = "Vagrantfile.chef"
    chef.add_recipe "nuaavee"
  end
end
