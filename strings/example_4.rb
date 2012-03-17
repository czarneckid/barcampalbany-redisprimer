# Increment, decrement, increment by and decrement by operations
require 'redis'

redis = Redis.new
redis.flushdb

redis.incr('key')
redis.incrby('key', 10)

redis.decr('key')
redis.decrby('key', 10)