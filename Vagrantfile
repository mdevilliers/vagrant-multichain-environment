# -*- mode: ruby -*-
# vi: set ft=ruby :

nodes = [
  { :hostname => 'multichain1', :ip => '192.168.56.33'},
  { :hostname => 'multichain2', :ip => '192.168.56.34'}
]

VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  nodes.each do |node|
    config.vm.define node[:hostname] do |node_config|

      node_config.vm.box = "ubuntu/trusty64"
      node_config.vm.hostname = node[:hostname]
      node_config.vm.network :private_network, ip: node[:ip]

      node_config.vm.provision 'shell', path: 'provision.sh'
    end
  end


end
