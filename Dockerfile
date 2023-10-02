FROM redis:7.2.1

RUN mkdir /usr/local/redis1

COPY cmd.sh /usr/local/cmd.sh

RUN chmod +x /usr/local/cmd.sh

RUN mkdir /usr/local/redis1-data
RUN mkdir /usr/local/redis2-data
RUN mkdir /usr/local/redis3-data
RUN mkdir /usr/local/redis4-data
RUN mkdir /usr/local/redis5-data
RUN mkdir /usr/local/redis6-data

COPY redis1/redis.conf /usr/local/redis1/redis.conf
COPY redis2/redis.conf /usr/local/redis2/redis.conf
COPY redis3/redis.conf /usr/local/redis3/redis.conf
COPY redis4/redis.conf /usr/local/redis4/redis.conf
COPY redis5/redis.conf /usr/local/redis5/redis.conf
COPY redis6/redis.conf /usr/local/redis6/redis.conf

CMD nohup /usr/local/cmd.sh
