pipeline {
    agent any

    stages {
        stage('Delete workspace before build starts') {
            steps {
                echo 'Deleting workspace'
                deleteDir()
            }
        }
        stage('git') {
            steps{
                git branch: 'main',
                    url: 'https://github.com/AngAng3/DevOps.git'        
                }
        }
        stage('Test') {
            steps{
                sh "ls -la "
                sh "pwd"
            }
        }
        stage('Run') {
            steps{
                sh 'python3 server.py'
            }
        }
        stage('Build docker image') {
            steps{
                sh 'docker build -t angang3 .'
            }
        }
        stage('Run docker image') {
            steps{
                sh 'docker run -t angang3 .'
            }
        }
        stage('Build docker container') {
            steps{
                sh 'docker run --rm angang3 .'
            }
        }
        stage('Delete docker image locally') {
            steps{
                sh 'docker rmi angang3'
            }
        }
    }
}
