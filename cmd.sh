echo "Starting nodes"

nohup /usr/local/bin/redis-server /usr/local/redis1/redis.conf &
nohup /usr/local/bin/redis-server /usr/local/redis2/redis.conf &
nohup /usr/local/bin/redis-server /usr/local/redis3/redis.conf &
nohup /usr/local/bin/redis-server /usr/local/redis4/redis.conf &
nohup /usr/local/bin/redis-server /usr/local/redis5/redis.conf &
nohup /usr/local/bin/redis-server /usr/local/redis6/redis.conf &

sleep 5

echo "Create cluster"

redis-cli --cluster create 127.0.0.1:6373 127.0.0.1:6374 127.0.0.1:6375 127.0.0.1:6376 127.0.0.1:6377 127.0.0.1:6378 --cluster-replicas 1 --cluster-yes

while true
do
 sleep 2
done
