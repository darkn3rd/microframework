# **ExpressJS Web MF**

## **Using on Localhost**

This should work wherever you have compilers, command line tools, and NodeJS installed.

### **Installing**

#### **OS X**

* **Install Compiler**: XCode Command Line Tools (developer.apple.com)
* **Install Favorite Package Manager**:
  ```bash
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update
  brew upgrade
  brew install node
  ```

### **Running**

```bash
npm install        # Install Express library
npm start          # Start Server
```

### **Testing**

```bash
$ curl -i localhost:8080
HTTP/1.1 200 OK
X-Powered-By: Express
Content-Type: text/html; charset=utf-8
Content-Length: 13
ETag: W/"d-WcoO+p9WM8sDcbvANVR42A"
Date: Sat, 12 Mar 2016 19:36:31 GMT
Connection: keep-alive

Hello world!
$ curl localhost:8080/hello/Jane
Why, Hello Jane!
```

## **Using on Docker**

See [Docker Readme](DOCKER.md)

## **Using on Vagrant**

See [Vagrant Readme](VAGRANT.md)
