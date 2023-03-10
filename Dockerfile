FROM jenkins/jenkins:lts-jdk11

USER root

RUN apt-get update && \
    apt-get install ruby-full

USER jenkins

