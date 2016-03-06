#!/usr/bin ruby
# app.rb
require 'sinatra'
require "sinatra/multi_route"

#, %r{/hello/?}
class HelloWorldApp < Sinatra::Base
  register Sinatra::MultiRoute
  get '/', '/hello', '/hello/' do
    "Hello, world!\n"
  end

  get '/hello/:name' do
    "Why Hello #{params[:name]}!\n"
  end
end
