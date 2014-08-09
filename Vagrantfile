# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'hashicorp/precise32'

  config.vm.provision 'chef_solo' do |chef|
    chef.add_recipe 'apt_update'
    chef.add_recipe 'vim'
    chef.add_recipe 'git'
    chef.add_recipe 'custom_files_via_git'
  end
end
