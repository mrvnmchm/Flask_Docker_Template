pipeline {
    agent {
        dockerfile true
    }
    stages {
        stage ('Build') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }
    }
}
