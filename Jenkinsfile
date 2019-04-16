pipeline {
    agent none
    stages {
        stage ('Prep') {
            steps {
                node ("master") {
                    checkout scm
                }
            }
        }
        stage ('Build') {
            steps {
                echo 'Building'
                node ("master") {
                    script {
                        withDockerServer([ uri: 'tcp://172.30.1.7:4243' ]) {
                            withDockerRegistry ([ url: 'http://172.30.1.7:5000/v2']) {
                                sh 'docker build -t fdt .'
                                sh 'docker run -d -p 8181:80 --name=fdt fdt'
                                sh 'docker ps -a'
                            }
                        }
                    }
                }
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
