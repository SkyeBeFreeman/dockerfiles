FROM maven:latest

RUN apt-get update && \
    wget https://github.com/DeemOpen/zkui/archive/master.zip && \
    unzip master.zip && \
    ls && \
    mv zkui-master zkui && \
    rm -rf ./master.zip && \
    cd zkui && \
    mvn clean install

ADD ./config.cfg /

EXPOSE 22180

CMD java -jar /zkui/target/zkui-2.0-SNAPSHOT-jar-with-dependencies.jar
