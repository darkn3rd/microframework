# **Flask**

## **Using on Localhost**

### **Install**

```bash
$ brew install python
$ # Install/Setup virtualenv
$ pip install virtualenv
$ pip install virtualenvwrapper
$ mkdir ${HOME}/.virtualenvs
$ source /usr/local/bin/virtualenvwrapper.sh
```

### **Run**

```bash
$ pip install flask                # install flask library globally
$ ./app.py                         # run program
```

### **Run Using Virtualenv**

This uses [virtualenv](https://virtualenv.pypa.io/en/latest/), so that libraries are installed in segregated environment.

```bash
$ mkvirtualenv flaskenv            # create segregated environment
$ pip install -r requirements.txt  # install flask library locally
$ ./app.py                         # run program
$ ## Run Tests Here (see below)
$ deactivate                       # exit segregated environment
```

## **Using Docker**

### **Install**

* Mac OS X or Windows:
  * [Virtualbox](https://www.virtualbox.org/wiki/Downloads)
  * [Docker Toolbox](https://www.docker.com/products/docker-toolbox)
* Linux
  * From Internet: `curl -fsSL https://get.docker.com/ | sh`
  * From Repository: https://docs.docker.com/engine/installation/

### **Setup**
On Windows or Mac OS X, you can use [Docker Machine](https://docs.docker.com/machine/).

#### **Mac OS X**
```bash
$ docker-machine create -d virtualbox toolbox
$ eval "$(docker-machine env toolbox)"
$ WEB_IP=$(docker-machine ip ${DOCKER_MACHINE_NAME})
```

### **Build and Run**

```bash
$ docker build -t myflaskapp .
$ docker run -d -p 5000:5000 myflaskapp
```

## **Using Vagrant**

### **Install**

* Mac OS X, Windows, Linux (Cent OS, Debian)
  * [Virtualbox](https://www.virtualbox.org/wiki/Downloads)
  * [Vagrant](https://www.vagrantup.com/)

### **Build and Run**

```bash
$ vagrant up
```

## **Testing Results**

```bash
WEB_IP=${WEB_IP:-localhost}
$ curl -i ${WEB_IP}:5000
HTTP/1.0 200 OK
Content-Type: text/html; charset=utf-8
Content-Length: 13
Server: Werkzeug/0.11.4 Python/2.7.11
Date: Sun, 13 Mar 2016 07:02:41 GMT

Hello World!
$ curl 192.168.99.102:5000/hello/Ralph
Why Hello Ralph!
```

# **Using Fig (Docker Compose)**

### **Install**

#### **Mac OS X or Windows**
  * [Virtualbox](https://www.virtualbox.org/wiki/Downloads)
  * [Docker Toolbox](https://www.docker.com/products/docker-toolbox)

#### **Linux**
  * Docker Engine
    * From Internet: `curl -fsSL https://get.docker.com/ | sh`
    * From Repository: https://docs.docker.com/engine/installation/
  * Docker Compose
    1. Install python and pip
    * Install Docker Compose: `pip install docker-compose`

### **Setup**
On Windows or Mac OS X, you can use [Docker Machine](https://docs.docker.com/machine/).

#### **Mac OS X**
```bash
$ docker-machine create -d virtualbox toolbox
$ eval "$(docker-machine env toolbox)"
$ WEB_IP=$(docker-machine ip ${DOCKER_MACHINE_NAME})
```

### **Build and Run**

```bash
$ docker-compose up -d up
$ # Test Results (see below)
$ docker-compose stop
```

## **Testing Results**

```bash
$ WEB_IP=${WEB_IP:-localhost}
$ curl -i ${WEB_IP}:5000
HTTP/1.0 200 OK
Content-Type: text/html; charset=utf-8
Content-Length: 13
Server: Werkzeug/0.11.4 Python/2.7.11
Date: Sun, 13 Mar 2016 07:02:41 GMT

Hello World!
$ curl ${WEB_IP}:5000/hello/Ralph
Why Hello Ralph!
```
