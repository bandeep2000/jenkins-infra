pipeline {
    agent any
     environment {
        AWS_ACCESS_KEY_ID     = credentials('jenkins-aws-secret-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('jenkins-aws-secret-access-key')
    }
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
