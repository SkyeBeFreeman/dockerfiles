FROM maven:3.5.2-jdk-8-alpine

EXPOSE 4843

RUN apk update && \
    apk add --no-cache --virtual=build-dependencies wget git docker python openssh go make curl && \
    wget https://bootstrap.pypa.io/get-pip.py && \
    wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war && \
    python get-pip.py && \
    cd tmp && mkdir backups 

ADD id_rsa /

ADD run.sh /

CMD [ "sh", "-c", "sh /run.sh" ]
