pipeline {
    agent any

    stages {
        stage("init"){
            steps{
                dir('infra'){
                sh """
                terraform init
                terraform validate
                """
                }
            }
        }
        stage("plan"){
            steps{
                dir('infra'){
                script{
                    sh "terraform init"
                    sh "terraform plan"
                }
                }
            }
        }
        stage("apply"){
            when{
                branch 'main'
            }
            steps{
                dir('infra'){
                script{
                    sh "terraform init"
                    sh "terraform apply -y"
                }
                }
            }
        }
    }
    post{
        failure {
            echo 'Build failed!'
        }
        success{
            echo 'Build success!'
                
        }
        always{
            cleanWs()
        }
    }
            
    
}