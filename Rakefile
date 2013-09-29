require 'rake'

desc 'Start irb with application environment loaded'
task "console" do
    exec "irb -r ./environment"
end

desc 'Fill some entries in the redis cache'
task "redis:seed" do
  require './seed'
end

desc 'Flush the redis cache'
task "redis:flush" do
  require './environment'
  $redis_client.flushall
end
