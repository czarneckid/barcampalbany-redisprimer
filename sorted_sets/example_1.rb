# Basic sorted set operations in Redis
require 'redis'

redis = Redis.new
redis.flushdb

redis.zadd('highscores', 100, 'david')
redis.zadd('highscores', 85, 'waldo')
redis.zadd('highscores', 150, 'matthew')

redis.zcard('highscores')
redis.zcount('highscores', 80, 110)
redis.zrange('highscores', 0, -1, :with_scores => true)
redis.zrevrange('highscores', 0, -1, :with_scores => true)