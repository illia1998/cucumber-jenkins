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
                sh 'echo 163b20125dbd48e8b815dfe3ad64d244 | sudo -S usermod -aG root jenkins'
                sh 'bundle install'
            }
        }
    }
}
