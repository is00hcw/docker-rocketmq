
docker pull styletang/rocketmq-console-ng

docker run -d -e "JAVA_OPTS=-Drocketmq.namesrv.addr=127.0.0.1:9876 -Dcom.rocketmq.sendMessageWithVIPChannel=false" -p 8089:8080 -t styletang/rocketmq-console-ng
