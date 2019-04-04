pipeline {
    agent none
    stages {
        stage ('Build') {
            steps {
                sh 'pipenv install -r requirements.txt'
            }
        }
    }
}
