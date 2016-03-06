#!/usr/bin/env perl -w
use Dancer2;

get '/' => sub {
  return 'Hello World!';
};

get '/hello/:name' => sub {
    return "Why, hello there " . params->{name};
};

start;
