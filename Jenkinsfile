pipeline {
    agent none
    stages {
        stage ('Prep') {
            steps {
                node ("master") {
                    checkout scm
                    script {
                        withDockerServer([ uri: 'tcp://172.30.1.7:4243' ]) {
                            withDockerRegistry ([ url: 'http://172.30.1.7:5000/v2']) {
                                sh 'docker run -d -p 8080:80 --name=fdt .'
                                sh 'docker ps -a'
                            }
                        }
                    }
                }
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
