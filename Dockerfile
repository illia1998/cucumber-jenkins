FROM jenkins/jenkins:lts-jdk11

USER root

RUN apt-get update && \
    apt-get install -y git curl autoconf bison build-essential libssl-dev \
                       libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev \
                       libffi-dev libgdbm6 libgdbm-dev libdb-dev && \
    curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash && \
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc && \
    echo 'eval "$(rbenv init -)"' >> ~/.bashrc && \
    source ~/.bashrc && \
    rbenv install 3.1.2 && \
    rbenv global 3.1.2 && 

USER jenkins
