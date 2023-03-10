pipeline {
    agent any

    stages {
        stage('Install dependencies') {
            steps {
                sh 'gem install bundler'
                sh 'bundle install'
            }
        }
    }
}
