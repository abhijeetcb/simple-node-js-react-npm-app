pipeline {
    agent {
        docker {
            image 'node:12-alpine'
            args '-p 3006:3000'
        }
    }
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
                sh 'sudo npm install'
            }
        }
      
    }
}
