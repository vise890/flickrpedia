require "rubygems"
require "bundler/setup"
Bundler.require(:default)
require "./app.rb"

set :run, false
set :raise_errors, true

# load environment variables
Dotenv.load

# Configure flickr API
FlickRaw.api_key = ENV['flickr_api_key']
FlickRaw.shared_secret = ENV['flickr_shared_secret']

# Require all models (in /api/models)
Dir["api/models/*.rb"].each { |file| require file }

# Run the thing
run Sinatra::Application
