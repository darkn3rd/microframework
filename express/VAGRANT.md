# **Using on Vagrant**

## **Install**

On Mac OS X, Windows, or Linux, install the following:
   * [Virtualbox](https://www.virtualbox.org/wiki/Downloads)
   * [Vagrant](https://www.vagrantup.com/)

### **Install on Mac OS X (Optional)**

If you are feeling adventurous, you can use [Cask](https://caskroom.github.io/):
```bash
brew cask install virtualbox
brew cask install virtualbox-extension-pack
brew cask install vagrant
```

### **Install on Windows (Optional)**

If you are feeling adventurous, you can use [Chocolately](https://chocolatey.org/):

```batch
choco install virtualbox
choco install virtualbox.extensionpack
:: Vagrant Components
choco install vagrant
```

## **Setup, Build, and Run**

There's an initial download of the Ubuntu 14.04 image and downloading other components (Docker) used in provisioning the system.

```bash
$ vagrant up
```

## **View Results**


```bash
$ curl -i -i localhost:8080
HTTP/1.1 200 OK
X-Powered-By: Express
Content-Type: text/html; charset=utf-8
Content-Length: 13
ETag: W/"d-WcoO+p9WM8sDcbvANVR42A"
Date: Sat, 12 Mar 2016 19:36:31 GMT
Connection: keep-alive

Hello world!
```
