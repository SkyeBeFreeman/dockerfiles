FROM ubuntu:xenial

ADD http://apache.cs.utah.edu/zookeeper/zookeeper-3.4.10/zookeeper-3.4.10.tar.gz /

RUN apt-get update -qq && apt-get install -y --force-yes default-jdk && \
    tar -zxvf zookeeper-3.4.10.tar.gz && \
    mv zookeeper-3.4.10 zookeeper && \
    rm -rf ./zookeeper-*tar.gz && \
    mkdir -p /var/lib/zookeeper && \
    rm /bin/sh && \
    ln -s /bin/bash /bin/sh

ADD zoo.cfg zookeeper/conf

EXPOSE 2181 2888 3888

VOLUME [ "/zookeeper/data" ]

ENTRYPOINT sh /zookeeper/bin/zkServer.sh start-foreground
