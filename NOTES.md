# Brainstorm Bucket

Dump of ideas to discard or use later.

## **Docker and Vagrant**

Some of the projects will support both [Docker](https://www.docker.com/) and [Vagrant](https://www.vagrantup.com).  As an alternative to running these directly on your host system you can use either [Docker](https://www.docker.com/) or [Vagrant](https://www.vagrantup.com).  

With [Vagrant](https://www.vagrantup.com), on all systems ([Debian](https://www.debian.org/), [CentOS](https://www.centos.org/), [Mac OS X](http://www.apple.com/osx/), [Windows](https://www.microsoft.com/en-us/windows)), you can start up the services with `vagrant up`.  

[Docker](https://www.docker.com/) is more complicated, so more instructions provided *build* and *run* the container.  On [Mac OS X](http://www.apple.com/osx/) and [Windows](https://www.microsoft.com/en-us/windows), you will need [Docker Machine](https://docs.docker.com/machine/) to run [Docker](https://www.docker.com/).

## **Follow On Project Ideas**

These are in brainstorm mode, but basically, you can explore areas of testing and delivery of the web code.  Here's some ideas:

- Deployment Tools - [mina](http://nadarei.co/mina/), [capistrano](http://capistranorb.com/), [fabric](http://www.fabfile.org/), [mcollective](https://puppetlabs.com/mcollective)
- Change Configuration - [cfengine](https://cfengine.com/), [chef](https://www.chef.io/), [puppet](https://puppetlabs.com/), [ansible](https://www.ansible.com/), [salt](http://saltstack.com/)
- Robust Web Servers - [Apache](https://httpd.apache.org/), [Nginx](https://www.nginx.com/)
- Segregation
  - System - [AMI](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIs.html), [Packer](https://www.packer.io/), [VeeWee](https://github.com/jedi4ever/veewee), [Vagrant](https://www.vagrantup.com/)
  - Application - [Docker](https://www.docker.com/), [Rkt](https://coreos.com/rkt/)
- Testing - [unit tests](http://artofunittesting.com/definition-of-a-unit-test/), [TDD](http://agiledata.org/essays/tdd.html), [BDD](http://dannorth.net/introducing-bdd/), [Capybara](https://github.com/jnicklas/capybara), [Zombie](http://zombie.js.org/)

## **Links**

* Stefan's Blog w/ github.io
  * https://stefanscherer.github.io/
  * https://stefanscherer.github.io/build-your-local-windows-docker-swarm/
  * https://stefanscherer.github.io/build-docker-swarm-for-windows-the-docker-way/
* Container Tutorials
  * http://containertutorials.com/docker-compose/flask-compose.html
  * http://containertutorials.com/docker-compose/flask-simple-app.html
  * https://realpython.com/blog/python/dockerizing-flask-with-compose-and-machine-from-localhost-to-the-cloud/
* Flask
  * http://odewahn.github.io/docker-jumpstart/example.html
* Dev Environments  
  * https://docs.docker.com/opensource/project/set-up-dev-env/
  * https://docs.docker.com/compose/install/
* Vagrant Reference
  * https://www.vagrantup.com/docs/provisioning/docker.html
  * https://www.vagrantup.com/docs/docker/
  * https://github.com/leighmcculloch/vagrant-docker-compose
* Vagrant + Docker
  * http://blog.zenika.com/2014/10/07/setting-up-a-development-environment-using-docker-and-vagrant/
  * http://blog.scottlowe.org/2015/02/10/using-docker-with-vagrant/
  * http://blog.scottlowe.org/2015/08/04/using-vagrant-docker-machine-together/
