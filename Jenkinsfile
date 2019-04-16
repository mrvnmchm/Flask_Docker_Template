pipeline {
    agent none
    stages {
        stage ('Prep') {
            steps {
                echo 'Preparing'
                dockerNode {
                    script {
                        withDockerServer([ uri: 'tcp://172.30.1.7:4342' ]) {
                            withDockerRegistry ([ url: 'http://172.30.1.7:5000/v2']) {
                                image 'mrvnmchm/speedtria'
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
