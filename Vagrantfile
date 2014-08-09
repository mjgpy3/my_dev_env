# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'hashicorp/precise32'

  config.vm.provision 'chef_solo' do |chef|
    chef.add_recipe 'apt_update'
    chef.add_recipe 'vim'
  end
end
