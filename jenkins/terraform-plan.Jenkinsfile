pipeline {
    agent any
    // environment {
    // ARM_TENANT_ID = credentials('AzureTenantID')
    // ARM_CLIENT_ID = credentials('AzureClientID')
    // ARM_CLIENT_SECRET = credentials('AzureClientSecret')
    // ARM_SUBSCRIPTION_ID = credentials('AzureSubscriptionID')
    // }
    tools {
        terraform 'terraform-1'
        git 'Default'
    }
    stages {
        stage('Source') {
            steps {
                git branch: 'main', credentialsId: 'github-token', url: 'https://github.com/Emrede/devops-task-2.git'
            }
        }
        stage('Plan') {
            steps {
                sh '''
                az login
                '''
            }
        }
    }
}

    // stage('Apply') {
    //     steps {
    //         sh "terraform apply --auto-approve -input=false tfplan"
    //     }
    // }

// post {
//     always {
//         archiveArtifacts artifacts: 'terraform/tfplan.txt'
//     }
// }
