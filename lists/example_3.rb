# List pop/push operations in Redis
require 'redis'

redis = Redis.new
redis.flushdb

redis.lpush('list', 'bar')
redis.rpush('list', 'baz')
redis.lpush('list', 'foo')

redis.brpoplpush('list', 'another_list', 0)
redis.brpoplpush('list', 'another_list', 0)
redis.lrange('list', 0, -1)
redis.lrange('another_list', 0, -1)