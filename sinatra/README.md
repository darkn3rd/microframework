
## Installing

### Install Using RVM (OS X)

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

## Running

```bash
bundle install      # install Sinatra library
rackup              # start server
```


## Testing

```bash
WEB_IP=${WEB_IP:-localhost}
$ curl -i ${WEB_IP}:5000
HTTP/1.1 200 OK
Content-Type: text/html;charset=utf-8
Content-Length: 14
X-Xss-Protection: 1; mode=block
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
Server: WEBrick/1.3.1 (Ruby/2.3.0/2015-12-25)
Date: Sun, 13 Mar 2016 18:24:16 GMT
Connection: Keep-Alive

Hello, world!
$ curl ${WEB_IP}:3000/hello/James
Why Hello James!
```
