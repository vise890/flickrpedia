require 'rake'

desc 'Start irb with application environment loaded'
task "console" do
    exec "irb -r ./environment"
end

desc 'Flush the redis cache'
task "redis:flush" do
  require './environment'
  $redis_client.flushall
end
