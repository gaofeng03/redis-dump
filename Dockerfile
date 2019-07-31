FROM redis

# 导出
# redis-dump -u localhost:6379  > ./mooncake_redis_6379.json

# 导入
# cat ./mooncake_redis_6379.json | redis-load -u localhost:6379

RUN apt-get update && apt-get install ruby-dev -y \
    && apt-get install make
# RUN gem sources -a http://ruby.taobao.org/
RUN gem install redis-dump -V
