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
                                sh 'docker tag fdt:latest localhost:5000/mrvnmchm/flask_docker_template'
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
                node ("master") {
                    script {
                        withDockerServer([ uri: 'tcp://172.30.1.7:4243' ]) {
                            withDockerRegistry ([ url: 'http://172.30.1.7:5000/v2']) {
                                sh 'docker push localhost:5000/mrvnmchm/flask_docker_template'
                                sh 'docker stop fdt && docker rm fdt'
                            }
                        }
                    }
                }
            }
        }
        stage ('Deploy') {
            steps {
                echo 'Deploying'
                node ("master") {
                    script {
                        withDockerServer([ uri: 'tcp://172.30.1.7:4243' ]) {
                            withDockerRegistry ([ url: 'http://172.30.1.7:5000/v2']) {
                                sh 'docker ps -a'
                            }
                        }
                    }
                }
            }
        }
    }
}
