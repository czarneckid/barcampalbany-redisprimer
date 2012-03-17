# Set, get and append with Redis
require 'redis'

redis = Redis.new
redis.flushdb

redis.set('key', 'Hello')
redis.get('key')
redis.append('key', ' World')

redis.get('key')