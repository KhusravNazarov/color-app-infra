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
                script{
                    sh "terraform init"
                    sh "terraform plan"
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