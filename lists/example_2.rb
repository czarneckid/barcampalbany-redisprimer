# More list operations in Redis
require 'redis'

redis = Redis.new
redis.flushdb

redis.lpush('list', 'bar')
redis.rpush('list', 'baz')
redis.lpush('list', 'foo')

redis.llen('list')
redis.linsert('list', 'before', 'bar', 'foozy')
redis.lrange('list', 0, -1)
redis.lset('list', 1, 'loozy')
redis.lrange('list', 0, -1)
