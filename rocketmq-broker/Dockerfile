FROM apache/rocketmq-base:4.3.0

EXPOSE 10909 10911

RUN mv ${ROCKETMQ_HOME}/bin/runbroker-customize.sh ${ROCKETMQ_HOME}/bin/runbroker.sh \
 && chmod +x ${ROCKETMQ_HOME}/bin/runbroker.sh \
 && chmod +x ${ROCKETMQ_HOME}/bin/mqbroker

ENV NAMESRV_ADDR localhost:9876

EXPOSE 10909 10911

RUN echo -e "\nbrokerIP1 = 139.159.247.163\n" >> ./conf/broker.conf

CMD cd ${ROCKETMQ_HOME}/bin && export JAVA_OPT="${JAVA_OPT} -Duser.home=/opt" && sh mqbroker -n ${NAMESRV_ADDR} -c ../conf/broker.conf