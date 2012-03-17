# Interact with keys and values from a hash in Redis
require 'redis'

redis = Redis.new
redis.flushdb

redis.hset('hash', 'foo', 'bar')
redis.hset('hash', 'biz', 'buzz')

redis.hkeys('hash')
redis.hvals('hash')
redis.hgetall('hash')
