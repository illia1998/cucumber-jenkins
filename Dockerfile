FROM jenkins/jenkins:lts-jdk11

USER root

RUN apt-get update && \
    apt-get install -y curl gnupg && \
    curl -sSL https://rvm.io/mpapis.asc | gpg --import - && \
    curl -sSL https://get.rvm.io | bash -s stable && \
    /bin/bash -c "source /etc/profile.d/rvm.sh && \
        rvm install 3.1.2 && \
        rvm use 3.1.2 --default"

USER jenkins
