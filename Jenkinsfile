pipeline {
    agent none
    stages {
        stage ('Build') {
            agent {
                docker {
                    image '.'
                }
            }
            steps {
                sh 'pipenv install -r requirements.txt'
            }
        }
    }
}