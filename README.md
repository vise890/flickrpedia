# Flickrpedia

Browse Wikipedia via Flickr.

## Configuring Flickr access
Setup a `.env` file in your project root. Populate it with 
the api key and secret:
```ruby
flickr_api_key = "api+key+gibberish"
flickr_shared_secret = "shared+secret+blah_blah"
```

## Configuring Redis
1. Install Redis
`$ brew install redis`
2. Run Redis
`$ redis-server /usr/local/etc/redis.conf`

