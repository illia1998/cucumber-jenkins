FROM jenkins/jenkins:lts-jdk11

USER root

RUN apt-get update && \
    apt-get install -y ruby-full=1:3.1.2

USER jenkins
