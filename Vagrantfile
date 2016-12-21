# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
  end
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.synced_folder "../release_speck", "/vagrant_data"
  config.vm.network "forwarded_port", guest: 8080, host: 8080
end
