# **Ansible-Container**

This is in experimentation using [Ansible-Container](https://github.com/ansible/ansible-container).  Ansible-Container is tool to create containers using [docker-compose](https://docs.docker.com/compose/) in conjunction with an [Ansible playbook](http://docs.ansible.com/ansible/playbooks.html).  


## **Marketing Pitch**

The marketing around Ansible-Container could be summarized with the following:

* Ansible playbooks are easy to use, so use Ansible playbooks for building containers.
* Ansible toolers should use one go-to tool for all chores including building containers.

Ansible-Container is also promoting a workflow that I would term as *developer-run operations* (opposite of DevOps movement), where code is pushed from deveoper's laptop to production through systems like [OpenShift](https://www.openshift.com/) or [Kubernetes](http://kubernetes.io/).

### **The Reality**

I am excited about this project, but in using the technology at its current state (July 2016), I had some poignant realizations:

* `ansible-container` is excessively slow, several minutes compared to seconds with the docker toolset.
* NO layering leads to fat redundant containers
* playbooks can be frightfully more complex

For the last point, compare the following snippets:

**Dockerfile Snippet:**

```Dockerfile
COPY . /opt/app/
```

**Ansible-Container Snippet:**

```yaml
- name: Copy Source to APP_ROOT
  copy: src="{{ lookup('pipe','dirname `pwd`') }}/" dest="/opt/app/"
- name: Apply .dockerignore
  shell: /bin/cat .dockerignore | /usr/bin/xargs -n 1 rm -rf
  args:
    chdir: "/opt/app/"
```
