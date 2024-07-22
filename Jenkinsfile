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
        stage('deploy') {
            steps {
                input message: 'Do you want to approve the deployment?', ok: 'Yes'
                echo "Initiating deployment"
            }
        }
        stage("apply"){
            steps{
                script{
                    sh "terraform init"
                    sh "apply -auto-approve"
                }
            }
        }
            
    }
}