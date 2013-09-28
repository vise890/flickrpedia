require "rubygems"
require "bundler/setup"
require "sinatra"
require "./app.rb"

set :run, false
set :raise_errors, true

# load environment variables
Dotenv.load

# Configure flickr API
FlickRaw.api_key = ENV['flickr_api_key']
FlickRaw.shared_secret = ENV['flickr_shared_secret']

run Sinatra::Application
