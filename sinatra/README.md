# **Sinatra WebMF**

## **Using on Mac OS X Host**

* Prerequisites:
  * Install XCode Command Line Tools
  * Install Brew `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`


### **Install Using RVM (OS X)**

* Install XCode Command Line Tools
* Install Brew `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

```bash
brew install gpg
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
# command curl -sSL https://rvm.io/mpapis.asc | gpg --import -
\curl -sSL https://get.rvm.io | bash -s stable
source ~/.profile
rvm install 2.3.0
rvm default 2.3.0
gem install bundler
```

## **Run**

```bash
bundle install      # install Sinatra library
rackup              # start server via Rack
```
## **Using Docker or Vagrant**

See [Tools Readme](../TOOLS.md) for more information on install, setup, and start Docker or Vagrant.

### **Build and Run with Docker Compose**

```bash
$ docker-compose up -d
```

### **Build and Run with Vagrant**

```bash
$ vagrant up
```

## **Testing**

```bash
$ [ -z ${DOCKER_MACHINE_NAME} ] || WEBSERVER=$(docker-machine ip ${DOCKER_MACHINE_NAME})
$ WEBSERVER=${WEBSERVER:-localhost}
$ PORT=3000
$ curl -i ${WEBSERVER}:${PORT}
HTTP/1.1 200 OK
Content-Type: text/html;charset=utf-8
Content-Length: 14
X-Xss-Protection: 1; mode=block
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
Server: WEBrick/1.3.1 (Ruby/2.3.0/2015-12-25)
Date: Sun, 13 Mar 2016 18:24:16 GMT
Connection: Keep-Alive
```
