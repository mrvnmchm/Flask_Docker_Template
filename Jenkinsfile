pipeline {
    agent { docker { image 'python:3.5.1' } }
    stages {
        stage ('Build') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }
    }
}
