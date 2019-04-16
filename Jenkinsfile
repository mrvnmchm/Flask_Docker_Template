pipeline {
    agent { docker { image 'mrvnmchm/flask_docker_template:latest' }}
    stages {
        stage ('Test') {
            steps {
                sh 'flask --version | python3 --version'
            }
        }
    }
}
