pipeline {
    agent any

    stages {

        stage('Checkout Code') {
            steps {
                echo 'Checking out source code from repository'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image'
                sh 'docker build -t devops-node-app .'
            }
        }

        stage('Security Scan') {
            steps {
                echo 'Scanning Docker image using Trivy'
                sh 'trivy image devops-node-app || true'
            }
        }

        stage('Terraform Validate') {
            steps {
                echo 'Validating Terraform configuration'
                sh 'cd terraform && terraform init && terraform validate'
            }
        }

    }
}
