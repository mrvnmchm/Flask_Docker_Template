pipeline {
    agent {
        docker {
            image 'mrvnmchm/flask_docker_template'
        }
    }
    stages {
        stage ('Build') {
            steps {
                sh 'pipenv install -r requirements.txt'
            }
        }
    }
}
