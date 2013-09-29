require "rubygems"

# require all the gems in gemfile
require "bundler/setup"
Bundler.require(:default)
#
# load environment variables
# (needed for api key)
Dotenv.load

# Configure flickr API
FlickRaw.api_key = ENV['flickr_api_key']
FlickRaw.shared_secret = ENV['flickr_shared_secret']

# Require all models (in /api/models)
Dir["./api/models/*.rb"].each { |file| require file }

# require the actual app
require "./app.rb"

