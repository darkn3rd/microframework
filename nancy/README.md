

## Installing

### OS X

Prerequisites:
* Install XCode CommandLine Tools
* Install Mono MDK

Do not install Mono with Homebrew.  It only installs a subset of the tools.

```bash
nuget restore packages.config -PackagesDirectory packages # Install Libraries
mcs Program.cs HelloModule.cs -r:packages/Nancy.1.4.3/lib/net40/Nancy.dll \ -r:packages/Nancy.Hosting.Self.1.4.1/lib/net40/Nancy.Hosting.Self.dll \
-r:packages/Mono.Posix-4.5.4.5.0/lib/net45/Mono.Posix.dll
mkdir libs
find packages -name "*.dll" -exec ln -s {} bin/. ';'
```
