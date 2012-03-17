# Perform multiple get, set and delete operations on a hash in Redis
require 'redis'

redis = Redis.new
redis.flushdb

redis.hmset('hash', 'foo', 'bar', 'biz', 'buzz')
redis.hmget('hash', 'foo', 'biz', 'unknown')
redis.hdel('hash', 'foo')
redis.hgetall('hash')