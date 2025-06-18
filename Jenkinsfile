pipeline {
    agent any

    stages {

        stage('Clone Repo') {
            steps {
                git 'https://github.com/Dev00-1/calculator.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('simple-calculator:latest')
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker run -d -p 5000:5000 simple-calculator:latest'
                }
            }
        }
    }
}