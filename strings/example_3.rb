# Set a key with expiration
require 'redis'

redis = Redis.new
redis.flushdb

redis.setex('key', 10, 'Hello')
redis.get('key')

sleep(10)

redis.get('key')