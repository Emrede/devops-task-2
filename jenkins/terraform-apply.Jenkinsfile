pipeline {
    agent any
    environment {
        ARM_TENANT_ID = credentials('AzureTenantID')
        ARM_CLIENT_ID = credentials('AzureClientID')
        ARM_CLIENT_SECRET = credentials('AzureClientSecret')
        ARM_SUBSCRIPTION_ID = credentials('AzureSubscriptionID')
    }
    stages {
        stage('Source') {
            steps {
                git branch: 'main', credentialsId: 'github-token', url: 'https://github.com/Emrede/devops-task.git'
            }
        }

        stage('Apply') {
            steps {
                sh """
                    cd terraform
                    terraform init -input=false
                    terraform apply --auto-approve -input=false
                """
            }
        }
    }
}
