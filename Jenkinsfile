pipeline {
  agent {
    dockerfile true
  }
  stages {
    stage('Build') {
      agent {
        dockerfile {
          filename 'Dockerfile'
        }

      }
      steps {
        sh 'python --version'
        sh 'pip install -r requirements.txt'
      }
    }
  }
}