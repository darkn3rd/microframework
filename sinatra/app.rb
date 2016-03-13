#!/usr/bin/env ruby
# app.rb
require 'sinatra'
require "sinatra/multi_route"

# Override Defaults
set :port, 3000      # WEBrick=4567,
set :bind, '0.0.0.0' # WEBrick=localhost

class HelloWorldApp < Sinatra::Base
  register Sinatra::MultiRoute
  get '/', '/hello', '/hello/' do
    "Hello, world!\n"
  end

  get '/hello/:name' do
    "Why Hello #{params[:name]}!\n"
  end
end
