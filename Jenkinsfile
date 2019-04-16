pipeline {
    agent {docker { image 'mrvnmchm/flask_docker_template' } }
    stages {
        stage ('Prep') {
            steps {
                echo 'Preparing'
            }
        }
        stage ('Build') {
            steps {
                echo 'Building'
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
