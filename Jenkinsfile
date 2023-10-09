pipeline {
    agent {
        docker {
            image 'node:18.18.0-alpine3.18'
            args '-p 3000:3000'
        }
    }
    stages {
        stage('Initial test') {
            steps {
                sh 'echo ciao'
            }
        }
        stage('Build') {
            steps {
                sh 'cd example_app && pwd && npm install'
            }
        }
        stage('Testing') {
            steps {
                sh './scripts/test.sh'
            }
        }
        stage('Deliver') {
            steps {
                sh './scripts/deliver.sh'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh './scripts/kill.sh'
            }
        }
    }
}
