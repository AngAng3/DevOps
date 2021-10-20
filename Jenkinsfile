pipeline {
    agent { label 'ubuntu' }

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
                dir('DevOps') {
                    sh "ls -la "
                    sh "pwd"
                }
                    sh "ls -la "
                    sh "pwd"
            }
        }
        stage('Build docker image') {
            steps{
                dir('DevOps') {
                    sh 'docker build -t angang3/jenkins-images:0.4 .'
                }
            }
        }
        stage('Delete docker image locally') {
            steps{
                sh 'docker rmi angang3/jenkins-images:0.4'
            }
        }
    }
}
