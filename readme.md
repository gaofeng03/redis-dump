# 导出
> redis-dump -u localhost:6379  > ./redis_6379.json

# 导入
> cat ./redis_6379.json | redis-load -u localhost:6379

```
FROM redis
RUN apt-get update && apt-get install ruby-dev -y \
    && apt-get install make \
    && apt-get install gcc \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN gem install redis-dump -V
```
