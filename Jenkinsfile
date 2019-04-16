pipeline {
    agent none
    stages {
        stage ('Prep') {
            steps {
                echo 'Preparing'
            }
        }
        stage ('Build') {
            agent { docker 'mrvnmchm/flask_docker_template'}
            steps {
                echo 'Building'
                sh 'python app.py'
            }
        }
        stage ('Test') {
            steps {
                echo 'Testing'
            }
        }
        stage ('Deploy') {
            steps {
                echo 'Deploying'
            }
        }
    }
}
