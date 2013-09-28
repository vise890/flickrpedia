# load the ruby environment, gems, api keys models, etc
require './environment.rb'

set :run, false
set :raise_errors, true

# Run the thing
run Sinatra::Application
