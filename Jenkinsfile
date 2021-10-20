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
                sh 'sudo docker build -t angang3 .'
            }
        }
        stage('Build docker container') {
            steps{
                sh 'sudo docker run --rm angang3 .'
            }
        }
        stage('Delete docker image locally') {
            steps{
                sh 'sudo docker rmi angang3/jenkins-images:0.4'
            }
        }
    }
}
