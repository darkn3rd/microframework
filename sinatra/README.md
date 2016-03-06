
## Installing

### OS X Like A Boss w/ RVM

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
bundle install  # install Sinatra library
```

## Running

```
rackup
```
