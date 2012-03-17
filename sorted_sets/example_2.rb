# More sorted set operations in Redis
require 'redis'

redis = Redis.new
redis.flushdb

redis.zadd('highscores', 100, 'david')
redis.zadd('highscores', 85, 'waldo')
redis.zadd('highscores', 150, 'matthew')

redis.zrank('highscores', 'matthew')
redis.zrevrank('highscores', 'matthew')
redis.zscore('highscores', 'david')
redis.zrem('highscores', 'waldo')