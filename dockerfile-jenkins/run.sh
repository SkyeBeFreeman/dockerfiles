#!/bin/sh
git config --global user.name "E-Help"
git config --global user.name "E-Help"

git clone https://E-Help:ehelp2016@gitlab.com/ehelper/devops/jenkins-config.git
cp -r jenkins-config/jenkins-backup/F* /tmp/backups/

java -jar /jenkins.war --httpPort=4843