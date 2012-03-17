# Information about a hash in Redis
require 'redis'

redis = Redis.new
redis.flushdb

redis.hset('hash', 'foo', 'bar')
redis.hset('hash', 'biz', 'buzz')

redis.hlen('hash')
redis.hexists('hash', 'foo')
redis.hexists('hash', 'unknown')
