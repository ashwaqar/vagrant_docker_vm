# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.box = "bento/centos-7.2"
    config.vm.network :private_network, type: "dhcp", ip: "192.168.3.6"
    config.vm.synced_folder "./share", "/home/vagrant/share", type: "rsync"
    config.vm.network :forwarded_port, host: 80, guest: 80
    config.vm.provision :shell, path: "./install.sh"
  config.vm.provider "virtualbox" do |v|
    v.name = "Docker_centos"
    v.memory = 1024
    v.cpus = 2
  end
end
