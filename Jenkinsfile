pipeline {
    agent any
    stages {
        stage ('Build') {
            steps {
                sh 'pipenv install -r requirements.txt'
            }
        }
    }
}
