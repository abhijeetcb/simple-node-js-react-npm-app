pipeline {
    agent {
        docker {
            image 'node:12-alpine'
            args '-u root:root -p 3006:3000'
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
                sh '../jenkins/scripts/deliver.sh'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh '../jenkins/scripts/kill.sh'
            }
        }

    }
}
