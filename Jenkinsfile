pipeline {
    agent {
        dockerfile true
    }
    stages {
        stage ('Build') {
            steps {
                sh 'pipenv install -r requirements.txt'
            }
        }
    }
}
