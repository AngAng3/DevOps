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
        stage('Build docker image') {
            steps{
                sh 'docker build -t angang3/Docker .'
            }
        }
        stage('Run docker image') {
            steps{
                sh 'docker run -t angang3/Docker .'
            }
        }
        stage('Build docker container') {
            steps{
                sh 'docker run --rm angang3/Docker .'
            }
        }
        stage('Delete docker image locally') {
            steps{
                sh 'docker rmi angang3/Docker'
            }
        }
    }
}
