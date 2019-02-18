

FROM java:8

ARG rocketmqFileName=rocketmq-all-4.4.0-bin-release
RUN wget -O /tmp/${rocketmqFileName}.zip http://mirrors.hust.edu.cn/apache/rocketmq/4.4.0/${rocketmqFileName}.zip \
    && unzip -d /usr/local /tmp/${rocketmqFileName}.zip \
    && mv /usr/local/${rocketmqFileName} /usr/local/rocketmq

ENV ROCKETMQ_HOME /usr/local/rocketmq

WORKDIR ${ROCKETMQ_HOME}

EXPOSE 10909 10911

ENV NAMESRV_ADDR namesrv:9876
ENV MEMORY_CONF "-Xms256m -Xmx2048m -Xmn256m"
ENV BROKER_IP 203.195.176.188


# https://www.guonanjun.com/183.html
RUN echo -e "\nbrokerIP1 = ${BROKER_IP}\n" >> ./conf/broker.conf && sed -i 's/-Xms8g -Xmx8g -Xmn4g/${MEMORY_CONF}/g' ${ROCKETMQ_HOME}/bin/runbroker.sh


CMD cd ${ROCKETMQ_HOME}/bin && export JAVA_OPT="${JAVA_OPT} -Duser.home=/opt" && sh mqbroker -n ${NAMESRV_ADDR} -c ../conf/broker.conf