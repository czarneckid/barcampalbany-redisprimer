# Simple hash get and set with Redis
require 'redis'

redis = Redis.new
redis.flushdb

redis.hset('hash', 'foo', 'bar')
redis.hset('hash', 'biz', 'buzz')

redis.hget('hash', 'foo')
redis.hget('hash', 'biz')
redis.hget('hash', 'unknown')