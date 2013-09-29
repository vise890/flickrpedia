require "rubygems"

# require all the gems in gemfile
require "bundler/setup"
Bundler.require(:default)

# require std lib stuff
require 'json'
require 'open-uri'

# setup Redis
if ENV['rack_env'] == 'development'
  $redis_client = Redis.new
else
  redis_uri = URI.parse(ENV['REDISTOGO_URL'])
  $redis_client = Redis.new(host: redis_uri.host, port: redis_uri.port, password: redis_uri.password)
end


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

