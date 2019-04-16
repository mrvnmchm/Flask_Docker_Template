pipeline {
    agent { docker { image 'mrvnmchm:latest' }}
    stages {
        stage ('Test') {
            steps {
                sh 'flask --version | python3 --version'
            }
        }
    }
}
