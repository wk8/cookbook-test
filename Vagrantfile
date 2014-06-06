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

  config.vm.provider 'virtualbox' do |vb|
    # we want more CPUs, and more RAM!
    vb.customize ['modifyvm', :id, '--ioapic', 'on']
    vb.customize ['modifyvm', :id, '--cpus', '4']
    vb.customize ['modifyvm', :id, '--memory', '4096']

    # allow the guest machine to access the internet through the host
    vb.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
    vb.customize ['modifyvm', :id, '--natdnsproxy1', 'on']
  end
end
