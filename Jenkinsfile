pipeline {
    agent any
    stages {
        stage ('Build') {
            steps {
                sh 'apt-get install pip'
                sh 'pip install -r requirements.txt'
            }
        }
    }
}
