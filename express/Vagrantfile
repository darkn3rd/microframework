# -*- mode: ruby -*-
# vi: set ft=ruby :

WEBPORT = ENV['WEBPORT'] || 8080
IMGSOURCE = "/vagrant/"
IMGNAME = "vagrant/express-web"

$dockerhelper = <<DOCKERHELPER
docker ps -q | xargs -r docker kill
docker ps -aq | xargs -r docker rm
DOCKERHELPER

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "forwarded_port", guest: WEBPORT, host: WEBPORT
  config.vm.synced_folder ".", "/vagrant", disabled: false

  # docker install (otherwise vagrant takes 20+ min to install)
  config.vm.provision "shell", path: "install_docker_trusty.sh"

  # making vagrant idempotent again
  config.vm.provision "shell", inline: $dockerhelper

  # docker stuff
  config.vm.provision "docker" do |d|
    d.build_image "#{IMGSOURCE}", args: "-t #{IMGNAME}"
    d.run "#{IMGNAME}",
      args: "--env EXPRESS_PORT=#{WEBPORT} -p #{WEBPORT}:#{WEBPORT}"
  end
end
