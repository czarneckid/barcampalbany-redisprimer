# Difference set operations in Redis
require 'redis'

redis = Redis.new
redis.flushdb

redis.sadd('set_1', 'a')
redis.sadd('set_1', 'b')
redis.sadd('set_1', 'c')
redis.sadd('set_2', 'c')
redis.sadd('set_3', 'c')
redis.sadd('set_3', 'd')

redis.sdiff('set_1', 'set_2', 'set_3')
redis.sdiffstore('set_4', 'set_1', 'set_2', 'set_3')
redis.smembers('set_4')
