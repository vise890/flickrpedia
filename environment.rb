require "rubygems"
require "bundler/setup"
require "sinatra"
require "./app.rb"

# load environment variables
Dotenv.load

# Configure flickr API
FlickRaw.api_key = ENV['flickr_api_key']
FlickRaw.shared_secret = ENV['flickr_shared_secret']

# Require all models (in /api/models)
Dir["api/models/*.rb"].each { |file| require file }

