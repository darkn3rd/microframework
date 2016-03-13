# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  #config.vm.network "forwarded_port", guest: 2376, host: 2376

  config.vm.provision "docker" do |docker|
    docker.build_image "/vagrant", args: "-t web"
    docker.run "web" , args: "-p 3000:3000"
  end
end
