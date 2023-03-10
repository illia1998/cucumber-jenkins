pipeline {
  agent any
  stages {
    stage('Install Dependencies') {
      steps {
        sh 'sudo apt-get update'
        sh 'sudo apt-get install -y curl git'
        sh 'git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.11.2'
        sh 'echo ". $HOME/.asdf/asdf.sh" >> ~/.bashrc'
        sh 'echo ". $HOME/.asdf/completions/asdf.bash" >> ~/.bashrc'
        sh 'source ~/.bashrc'
      }
    }
    stage('Install Ruby') {
      steps {
        sh 'asdf plugin-add ruby'
        sh 'asdf install ruby 3.1.2'
        sh 'asdf global ruby 3.1.2'
        sh 'ruby --version'
        sh 'gem install bundler'
      }
    }
  }
}
