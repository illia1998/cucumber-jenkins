FROM jenkins/jenkins:lts-jdk11

USER root

RUN apt-get update && \
    apt-get install -y ruby3.1.2-full

USER jenkins

