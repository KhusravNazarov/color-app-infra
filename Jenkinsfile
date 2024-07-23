pipeline {
    agent any

    stages {
        stage("init"){
            steps{
                sh "terraform init"
            }
        }
        stage("plan"){
            steps{
                script{
                    sh "terraform init"
                    sh "terraform plan"
                }
            }
        }
        stage("pwd"){
            steps{
                sh """
                pwd
                whoami
                """
            }
        }
            
    }
}