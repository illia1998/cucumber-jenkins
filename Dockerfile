FROM jenkins/jenkins:lts-jdk11

USER root

RUN apt-get update && \
    apt install ruby-full

USER jenkins

