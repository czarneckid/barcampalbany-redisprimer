# Basic set operations in Redis
require 'redis'

redis = Redis.new
redis.flushdb

redis.sadd('users', 'david')
redis.sadd('users', 'waldo')
redis.sadd('users', 'matthew')

redis.scard('users')
redis.sismember('users', 'david')
redis.sismember('users', 'john')
redis.smembers('users')