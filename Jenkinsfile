pipeline {
    agent {
        docker {
            image 'node:12-alpine'
<<<<<<< HEAD
            args '-p 3006:3000'
=======
            args '-u root:root -p 3006:3000'
>>>>>>> ee9a37304ab55f33ef4f684f23ce08ea13d1bebf
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
<<<<<<< HEAD
        stage('Test') {
            steps {
                sh '../jenkins/scripts/test.sh'
            }
        }
        stage('Deliver') {
            steps {
                sh '../jenkins/scripts/deliver.sh'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh '../jenkins/scripts/kill.sh'
            }
        }
=======
      
>>>>>>> ee9a37304ab55f33ef4f684f23ce08ea13d1bebf
    }
}
