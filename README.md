# Micro-frameworks

I am experimenting with web micro-frameworks because they are so simple to use.  

You can rapidly create API framework using these, or a utility server (insecure) that acts as sort of quick and dirty RPC server.

## Functional Stuff

In these experiments, I am looking how to do:

 * single route
 * multiple routes per handler
   * list of routes
   * regex routes
 * dynamic route (variable)

## Platforms & Tools

 * [Dancer](http://perldancer.org/) (Perl)
   * [cpanmin](https://www.linode.com/docs/applications/development/manage-cpan-modules-with-cpan-minus)
 * [Sinatra](http://www.sinatrarb.com/) (Ruby)
   * [rvm](https://rvm.io/)
   * [bundler](http://bundler.io/)
      * [Gemfile](http://bundler.io/gemfile.html)
   * [rack](http://rack.github.io/)
 * [Express](http://expressjs.com/) (Node)
   * [npm](https://www.npmjs.com/)
      * [package.json](https://docs.npmjs.com/files/package.json)
 * [Flask](http://flask.pocoo.org/) (Python)
   * [pip](http://python-packaging-user-guide.readthedocs.org/en/latest/installing/)
   * [virtualenvwrapper](https://virtualenvwrapper.readthedocs.org/en/latest/)
