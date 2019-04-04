pipeline {
    agent any
    stages {
        stage ('Build') {
            steps {
                sh 'apt install pip | pipenv install -r requirements.txt'
            }
        }
    }
}
