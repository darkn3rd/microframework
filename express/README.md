# **Express**

Version 1.0.1

## **Directly On Mac OS X**

This should work wherever you have compilers, command line tools, and NodeJS installed.

### **Running**

```bash
brew install node  # assumes Homebrew installed
npm install        # Install Express library
npm start          # default port of 8080
EXPRESS_PORT=9090 npm start # use port 9090 instead
```

# **Using Docker or Vagrant**

See [Tools Readme](../TOOLS.md) for more information on install, setup, and start Docker or Vagrant.

### **Using Docker Compose**

```bash
$ docker-compose up -d # default port of 8080
$ WEBPORT=9090 docker-compose up -d # use port 9090 instead
```

### **Using Vagrant**

```bash
$ vagrant up # default port of 8080
$ WEBPORT=9090 vagrant up # alternative port of 9090
```

### **Using Ansible Container**

See [Ansible-Container Readme](ansible/README.md) for further information.

```bash
$ ansible-container build
$ ansible-container run    # port explicitly set to 8080
```

## **Testing Results**

```bash
# Docker Machine VM if this is used
$ [ -z ${DOCKER_MACHINE_NAME} ] || \
WEBSERVER=$(docker-machine ip ${DOCKER_MACHINE_NAME})
# Set web server IP to local host if not set previously
$ WEBSERVER=${WEBSERVER:-localhost}
$ WEBPORT=8080  # assumes we use default of 8080
# Run the Test
$ curl -i ${WEBSERVER}:${WEBPORT}
HTTP/1.1 200 OK
X-Powered-By: Express
Content-Type: text/html; charset=utf-8
Content-Length: 13
ETag: W/"d-WcoO+p9WM8sDcbvANVR42A"
Date: Sat, 12 Mar 2016 19:36:31 GMT
Connection: keep-alive

Hello World!
```
