pipeline {
    agent {
        docker.withServer('tcp://172.03.1.7:4342'){
            docker.image('mrvnmchm/flask_docker_template')
        }
    }
    stages {
        stage ('Prep') {
            steps {
                echo 'Preparing'
                sh 'apt-get update && apt-get install -y python-pip python-dev build-essential'
                sh 'apt-get clean'
                sh 'pip install -r requirements.txt'
            }
        }
        stage ('Build') {
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
