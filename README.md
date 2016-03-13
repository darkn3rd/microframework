# Web Microframeworks Introduction

The web micro-frameworks like Sinatra are fun and easy to use.  You can rapidly create a web API (RESTful), or an ad-hoc utility server.

## Goal

This goal for this project it to create simple *Hello World* applications that can be used as a template to create more robust projects.  In going through these mini-projects, you can learn how to basics of the language platform and toolset in addition to the web micro-framework.

## Functional Stuff

In these experiments, I am looking how to do:

 * single route
 * multiple routes per handler
   * list of routes
   * regex routes
 * dynamic route (variable)

## Docker and Vagrant

Some of the projects will support both Docker and Vagrant.  You can use **Docker Machine** or **Vagrant** to run these in a Linux guest system, or run them locally your host system.

## Platforms & Tools

 Microframework  | Platform  | Tools  
-----------------|-----------|--------
[Dancer](http://perldancer.org/)    | [Perl](https://www.perl.org/)      | [cpanmin](https://www.linode.com/docs/applications/development/manage-cpan-modules-with-cpan-minus)  
[Sinatra](http://www.sinatrarb.com/)| [Ruby](https://www.ruby-lang.org/) | [rvm](https://rvm.io/), [bundler](http://bundler.io/), [Gemfile](http://bundler.io/gemfile.html), [rack](http://rack.github.io/)  
[Express](http://expressjs.com/)    | [NodeJS](https://nodejs.org/)      | [npm](https://www.npmjs.com/), [package.json](https://docs.npmjs.com/files/package.json)  
[Flask](http://flask.pocoo.org/)    | [Python](https://www.python.org/)  | [pip](http://python-packaging-user-guide.readthedocs.org/en/latest/installing/), [virtualenvwrapper](https://virtualenvwrapper.readthedocs.org/en/latest/)
[Spark](http://sparkjava.com/)      | [Java](https://java.com/en/download/) ([JVM](https://java.com/en/download/)) | [Apache Maven](https://maven.apache.org/)  
[Spark](http://sparkjava.com/)      | [Groovy](http://www.groovy-lang.org/) ([JVM](https://java.com/en/download/)) | [Gradle](http://gradle.org/)  
[Nancy](http://nancyfx.org/)        | [C#](https://msdn.microsoft.com/en-us/library/67ef8sbd.aspx) ([CLR](http://www.mono-project.com/)) | [Mono](http://www.mono-project.com/), [Nuget](https://www.nuget.org/)  

## Follow On Projects

   These are in brainstorm mode, but basically, you can explore areas of testing and delivery of the web code.  Here's some ideas:

    - Deployment Tools - [mina](http://nadarei.co/mina/), [capistrano](http://capistranorb.com/), [fabric](http://www.fabfile.org/), [mcollective](https://puppetlabs.com/mcollective)
    - Change Configuration - [cfengine](https://cfengine.com/), [chef](https://www.chef.io/), [puppet](https://puppetlabs.com/), [ansible](https://www.ansible.com/), [salt](http://saltstack.com/)
    - Robust Web Servers - [Apache](https://httpd.apache.org/), [Nginx](https://www.nginx.com/)
    - Segregation
      - System - [AMI](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIs.html), [Packer](https://www.packer.io/), [VeeWee](https://github.com/jedi4ever/veewee), [Vagrant](https://www.vagrantup.com/)
      - Application - [Docker](https://www.docker.com/), [Rkt](https://coreos.com/rkt/)
    - Testing - [unit tests](http://artofunittesting.com/definition-of-a-unit-test/), [TDD](http://agiledata.org/essays/tdd.html), [BDD](http://dannorth.net/introducing-bdd/), [Capybara](https://github.com/jnicklas/capybara), [Zombie](http://zombie.js.org/)
