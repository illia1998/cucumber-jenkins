FROM jenkins/jenkins:lts-jdk11

USER root

RUN apt-get update && \
    apt-get install -y git curl && \
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0 && \
    echo '. $HOME/.asdf/asdf.sh' >> ~/.bashrc && \
    echo '. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc && \
    /bin/bash -c "source ~/.bashrc && \
        asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git && \
        bash ~/.asdf/plugins/ruby/bin/import-release-team-keyring && \
        asdf install ruby 3.1.2 && \
        asdf global ruby 3.1.2 && \
        gem install bundler"

USER jenkins
