pipeline {
    agent {
        docker {
            image 'node:12-alpine'
            args '-u root:root -p 3006:3006'
        }
    }
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        stage('Deliver') {
            steps {
                sh 'npm start & sleep 1'
                sh 'kill.sh'    
              }
        }

    }
}
