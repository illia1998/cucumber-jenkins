FROM jenkins/jenkins:lts-jdk11

USER root

RUN apt-get update && \
    apt-get install -y curl gnupg2 && \
    curl -sSL https://rvm.io/mpapis.asc | gpg --import - && \
    gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB && \
    curl -sSL https://get.rvm.io | bash -s stable && \
    /bin/bash -c "source /etc/profile.d/rvm.sh && \
        rvm install 3.1.2 && \
        rvm use 3.1.2 --default"

USER jenkins
