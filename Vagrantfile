# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'

Vagrant.require_version '>= 1.5.0'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.hostname = 'test-berkshelf'
  # config.omnibus.chef_version = '11.12.4'
  # config.omnibus.chef_version = '11.6.0'
  config.vm.box = 'opscode_ubuntu-12.04_provisionerless'
  config.vm.box_url = 'https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_provisionerless.box'

  config.berkshelf.enabled = true
  
  config.vm.provision :chef_solo do |chef|
    chef.run_list = [
        'recipe[test]'
    ] 
  end
end
