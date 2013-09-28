require "rubygems"
require "bundler/setup"
require "sinatra"
require "./app.rb"

set :run, false
set :raise_errors, true

# load environment variables
Dotenv.load
run Sinatra::Application
