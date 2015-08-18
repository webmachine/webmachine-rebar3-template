Project Skeleton for the {{name}} app.

You should find in this directory:

README : this file
Makefile : simple make commands
rebar.config : configuration for Rebar3
{{apps_dir}}/{{name}}/src
  /{{name}}.app.src : application information file for OTP
  /{{name}}.erl : the public API for your app
  /{{name}}_app.erl : base module for the Erlang application behavior
  /{{name}}_config.erl : configuration interface for your application
  /{{name}}_sup.erl : OTP supervisor for the application
  /{{name}}_resource.erl : a simple example Webmachine resource
/priv
  /www : a convenient place to put your static web content

You probably want to do one of a couple of things at this point:

### Build the skeleton application:

```
$ make all
```

### Start up the skeleton application:
```
$ make rel
...
$ ./_build/default/rel/{{name}}/bin/{{name}} console
```

### Change the basic application:
* edit src/{{name}}_resource.erl

### Add some new resources:
* edit src/YOUR_NEW_RESOURCE.erl
* edit src/{{name}}_config.erl's `dispatch/0` function
