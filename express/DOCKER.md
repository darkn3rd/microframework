# **Using on Docker**

## **Install**

On Mac OS X or Windows, install the following:
   * [Virtualbox](https://www.virtualbox.org/wiki/Downloads)
   * [Docker Toolbox](https://www.docker.com/products/docker-toolbox)

On Linux, you can run, you can:
   * *Install from Internet*:
     ```bash
     curl -fsSL https://get.docker.com/ | sh
     ```
   * *Install from Repository*: https://docs.docker.com/engine/installation/

### **Install on Mac OS X (Optional)**

If you are feeling adventurous, you can use [Cask](https://caskroom.github.io/):
```bash
brew cask install virtualbox
brew cask install virtualbox-extension-pack
brew cask install dockertoolbox
```

### **Install on Windows (Optional)**

if you are feeling adventurous, you can use [Chocolately](https://chocolatey.org/):

```batch
choco install virtualbox
choco install virtualbox.extensionpack
:: Docker Components
choco install docker
choco install docker-machine
choco install docker-compose
```

Note: There's no current package for [Docker Toolbox](https://www.docker.com/products/docker-toolbox), but some of the components can be installed manually.

## **Setup**

On Mac OS X or Windows, setup a virtual guest to host the Docker service.

```bash
docker-machine create -d virtualbox toolbox
eval "$(docker-machine env toolbox)"
```

## **Build Image**

```bash
$ docker build -t mywebapp .
$ docker images mywebapp
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
mywebapp            latest              23c631168326        8 minutes ago       647.8 MB

```

## **Run Container**

```bash
$ docker run -p 49160:8080 -d mywebapp
$ docker ps | grep -E 'CONTAINER|mywebapp'
CONTAINER ID        IMAGE                     COMMAND                  CREATED             STATUS              PORTS                                           NAMES
d597e8811d0e        mywebapp                  "npm start"              10 seconds ago      Up 9 seconds        0.0.0.0:8080->8080/tcp                          grave_williams
$ docker port $(docker ps | grep mywebapp | grep -o '\w*$')
8080/tcp -> 0.0.0.0:8080
```

## **View Results**

### **On Linux**
If you are on a Linux system where the container is running the container locally, you can simply: `curl -i localhost:8080`

### **With Docker Machine**

With Docker Machine, it is more complex, because the ports are not exposed to localhost, but to the active docker machine's ip address.

On a Mac OS X, running Docker Machine, you can do the following:
```bash
$ DOCKER_MACHINE_IP=$(docker-machine ip ${DOCKER_MACHINE_NAME})
$ CONTAINER_NAME=$(docker ps | grep mywebapp | grep -o '\w*$')
$ EXPOSED_PORT=$(docker port ${CONTAINER_NAME} | grep '8080/tcp' | cut -d: -f2)
$ curl -i ${DOCKER_MACHINE_IP}:${EXPOSED_PORT}
HTTP/1.1 200 OK
X-Powered-By: Express
Content-Type: text/html; charset=utf-8
Content-Length: 13
ETag: W/"d-WcoO+p9WM8sDcbvANVR42A"
Date: Sat, 12 Mar 2016 19:36:31 GMT
Connection: keep-alive

Hello world!
```
