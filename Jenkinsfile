pipeline {
agent any

```
stages {

    stage('Checkout Code') {
        steps {
            echo 'Checking out source code from repository'
        }
    }

    stage('Build Docker Image') {
        steps {
            echo 'Building Docker image'
        }
    }

    stage('Security Scan') {
        steps {
            echo 'Scanning Docker image using Trivy'
        }
    }

    stage('Deploy Infrastructure') {
        steps {
            echo 'Deploying infrastructure using Terraform'
        }
    }

}
```

}
