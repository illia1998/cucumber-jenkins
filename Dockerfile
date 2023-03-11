FROM jenkins/jenkins:lts-jdk11

USER root

RUN apt-get update && apt-get install -y openssl curl

RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
RUN \curl -L https://get.rvm.io | bash -s stable

RUN bash -c -l 'rvm install ruby-3.1.2'


USER jenkins
