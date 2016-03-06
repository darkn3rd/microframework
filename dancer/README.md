
## Installing

### OS X

* Install XCode Command Line Tools
* Install Brew `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

```bash
brew update
brew upgrade
brew install perl
brew link perl --force
# check paths are /usr/local/Cellar/perl/
perl -E '$"="\n"; say "@INC"'
```

## Running

```bash
# Install Dancer2 library
curl -L http://cpanmin.us | perl - --sudo Dancer2
# Run Server
./app.pl &
```

## Testing

```bash
# check to see if running on port 3000
lsof -i tcp:3000
# test it
curl http://127.0.0.1:3000/hello/John
```
