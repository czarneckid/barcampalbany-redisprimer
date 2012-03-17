# Basic list operations in Redis
require 'redis'

redis = Redis.new
redis.flushdb

redis.lpush('list', 'bar')
redis.rpush('list', 'baz')
redis.lpush('list', 'foo')

redis.lindex('list', 1)
redis.lrange('list', 0, -1)

redis.lpop('list')
redis.rpop('list')
