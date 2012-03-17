# Simple get and set with Redis
require 'redis'

redis = Redis.new
redis.flushdb

redis.set('foo', 'bar')
redis.get('foo')
old_value = redis.getset('foo', 'baz')
redis.get('foo')