pipeline {
    agent any

    stages {
        stage('Install dependencies') {
            steps {
                sh 'asdf plugin add ruby'
                sh 'asdf install ruby 3.1.2'
                sh 'asdf local ruby 3.1.2'
                sh 'gem install bundler'
                sh 'bundle install'
            }
        }
    }
}
