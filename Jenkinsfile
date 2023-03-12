pipeline {
    agent any
    
    environment {
        PATH = "/usr/local/rvm/rubies/ruby-3.1.2/bin:${PATH}"
    }
    stages {
        stage('Ruby Version') {
            steps {
                sh 'ruby --version'
            }
        }
        stage('Execute Script') {
            steps {
                sh 'ruby script.rb'
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'echo password | sudo -S ln -s /bin/mkdir /usr/bin/mkdir'
                sh 'echo password | sudo -S env PATH="$PATH" bundle install'
            }
        }
    }
}

