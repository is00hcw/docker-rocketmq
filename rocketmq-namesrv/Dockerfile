FROM java:8

ARG rocketmqFileName=rocketmq-all-4.3.0-bin-release
RUN wget -O /tmp/${rocketmqFileName}.zip http://mirrors.hust.edu.cn/apache/rocketmq/4.3.0/${rocketmqFileName}.zip \
    && unzip -d /usr/local /tmp/${rocketmqFileName}.zip \
    && mv /usr/local/${rocketmqFileName} /usr/local/rocketmq

ENV ROCKETMQ_HOME /usr/local/rocketmq

EXPOSE 9876

WORKDIR ${ROCKETMQ_HOME}

CMD ["bin/mqnamesrv"]

    