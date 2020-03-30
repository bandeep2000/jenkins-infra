pipeline {
    agent any
    stages {
        stage('terraform init') {
            steps {
                sh 'terraform init'
            }
        }
          
        stage('terraform apply') {
            steps {
                sh 'pwd'
                dir('terraform') {
                   sh 'terraform init'
                   sh 'terraform apply --auto-approve'
                   sh 'pwd'
                }
            }
        }
    }
}
