pipeline {
    agent any
    stages {
        stage ('Build') {
            steps {
                sh 'sudo apt-get install pipenv | pipenv install -r requirements.txt'
            }
        }
    }
}
