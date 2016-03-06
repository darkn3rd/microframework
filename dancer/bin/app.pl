#!/usr/bin/env perl -w
use Dancer2;

get '/' => sub {
  return "Hello World!\n";
};

# get '/hello' => sub {
#   return "Hello World!\n";
# };

get qr{/hello/?} => sub {
  return "Hello World!\n";
};

get '/hello/:name' => sub {
    return "Why, Hello " . params->{name} . "\n";
};

start;
