# **Web Microframeworks Introduction**

The web micro-frameworks like [Sinatra](http://www.sinatrarb.com/) are fun and easy to use.  You can rapidly create a web API (RESTful), or an ad-hoc utility server.  

The actual API closely matches the HTTP protocol, so if you understand the protocol, the APIs will make sense.

## **Pull Submodules**

I put the different mini-projects into submodules to make them more easily manageable.  To pull them, do:

```bash
git submodule update --init --recursive
```

## **Goal**

Create simple `Hello <% name %>` web application for local development play.  Nothing robust.

Added Docker & Vagrant tooling for easy bootstrapping with either `vagrant up` or `docker-compose up -d` commands.

## **Functional Stuff**

In these experiments, I am looking how to do:

 * single route
 * multiple routes per handler
   * list of routes
   * regex routes
 * dynamic route (variable)


## **Platforms & Tools**


 Microframework                      | Language (Platform)                                                                                 | Tools  
-------------------------------------|----------------------------------------------------------------------------------------------------|--------
[Dancer](http://perldancer.org/)     | [Perl](https://www.perl.org/)                                                                      | [cpanmin](https://www.linode.com/docs/applications/development/manage-cpan-modules-with-cpan-minus)  
[Sinatra](http://www.sinatrarb.com/) | [Ruby](https://www.ruby-lang.org/)                                                                 | [rvm](https://rvm.io/), [bundler](http://bundler.io/), [Gemfile](http://bundler.io/gemfile.html), [rack](http://rack.github.io/)  
[Express](http://expressjs.com/)     | [NodeJS](https://nodejs.org/)                                                                      | [npm](https://www.npmjs.com/), [package.json](https://docs.npmjs.com/files/package.json)  
[Flask](http://flask.pocoo.org/)     | [Python](https://www.python.org/)                                                                  | [pip](http://python-packaging-user-guide.readthedocs.org/en/latest/installing/), [virtualenvwrapper](https://virtualenvwrapper.readthedocs.org/en/latest/)
[Spark](http://sparkjava.com/)       | [Java](https://java.com/en/download/) ([JVM](https://java.com/en/download/))                       | [Apache Maven](https://maven.apache.org/)  
[Spark](http://sparkjava.com/)       | [Groovy](http://www.groovy-lang.org/) ([JVM](https://java.com/en/download/))                       | [Gradle](http://gradle.org/)  
[Nancy](http://nancyfx.org/)†         | [C#](https://msdn.microsoft.com/en-us/library/67ef8sbd.aspx) ([CLR](http://www.mono-project.com/)) | [Mono](http://www.mono-project.com/), [Nuget](https://www.nuget.org/)  

† [Nancy](http://nancyfx.org/) 1.x docs at the time only detailed using [Visual Studio](https://visualstudio.microsoft.com/vs/) with [MS .Net Framework](https://en.wikipedia.org/wiki/.NET_Framework), and a blog on using [Mono Project](https://www.mono-project.com/) ([Visual Studio](https://visualstudio.microsoft.com/vs/)  required still).  Recently, with Nancy 2.x, [dotnetcore](https://github.com/dotnet/core) is supported, so now we can get cross platform support.  More later…
