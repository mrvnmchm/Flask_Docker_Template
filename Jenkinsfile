pipeline {
    agent none
    stages {
        stage('Build') {
            agent {
                docker {
                    image 'mrvnmchm/flask_docker_template'
                }
            }
        }
    }
}