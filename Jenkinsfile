pipeline {
    agent any

    stages {
        stage("init"){
            steps{
                sh """
                terraform init
                terraform validate
                """
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
        post {
            failure {
                echo 'Build failed!'
            }
            success{
                echo 'Build success!'
            }
        }
            
    }
}