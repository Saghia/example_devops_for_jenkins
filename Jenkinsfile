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
                sh 'cd example_app'
                sh 'npm install'
            }
        }

    }
}