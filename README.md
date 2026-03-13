# DevOps Assignment – Secure CI/CD Deployment
## Project Overview
 This project demonstrates a complete DevOps CI/CD pipeline for deploying a Node.js application using containerization, automated pipelines, infrastructure as code, and cloud deployment.

 The application is containerized using Docker, automated with Jenkins, infrastructure is provisioned using Terraform, and the application is deployed on Amazon Web Services.

 Security scanning is integrated using Trivy to detect and fix vulnerabilities before deployment.

### Project Goals
* Automate application deployment

* Implement Infrastructure as Code

* Integrate security scanning into CI/CD

* Deploy application to cloud infrastructure

## Architecture Explanation
The deployment follows a typical DevOps CI/CD workflow.
![This is an alt text.](/Media/ss6.png)


### Workflow Steps

1. Developer pushes code to GitHub.

2. Jenkins pipeline is triggered automatically.

3. Trivy scans the project for vulnerabilities.

4. The application is containerized using Docker.

5. Infrastructure is provisioned using Terraform.

6. Application is deployed to an Amazon Web Services EC2 instance.

7. Users access the application through the public IP.

## Cloud Provider Used
This project uses Amazon Web Services for cloud deployment.

| Service | Purpose |
| :--- | :---: |
| EC2 Instance | Host the application |
| Security Groups | Control inbound/outbound traffic |
| Public IP | Access application over the internet |


### Instance Details
* Instance Type: t3.micro

* Operating System: Linux

* Open Port: 3000

* Deployment Method: Docker Container

Application URL Example:
```
http://PUBLIC-IP:3000
```

## Tools & Technologies
| Tool | Purpose |
| :--- | :---: |
| Node.js | Backend application |
| Docker | Containerization |
| Jenkins | CI/CD automation |
| Terraform | Infrastructure as Code |
| Trivy | Security vulnerability scanning |
| GitHub | Source code management |
| AWS | Cloud infrastructure |

## How to run this project
Step 1 — Clone the Repository
```
git clone https://github.com/YOUR-USERNAME/devops-assignment.git
cd devops-assignment
```
Step 2 — Run Application Locally (Optional)
Navigate to the application folder.
```
cd app
npm install
node app.js
```
Open browser:
```
http://localhost:3000
```

Step 3 — Build Docker Image
```
docker build -t node-app .
```
Run the container:
```
docker run -d -p 3000:3000 node-app
```

Step 4 — Run Terraform Infrastructure

Navigate to terraform folder.
```
cd terraform
```
Initialize Terraform.
```
terraform init
```
Preview infrastructure changes.
```
terraform plan
```
Create infrastructure.
```
terraform apply
```
This will provision an EC2 instance on Amazon Web Services.

Step 5 — Access the Application

After deployment, access the application using the EC2 public IP.

Example:
```
http://PUBLIC-IP:3000
```
## Before & After Security Report
Before Security Fix

Initial security scan using Trivy detected vulnerabilities.

Issues Identified

* Hardcoded secrets

* Open security group rules

* Docker image vulnerabilities
![This is an alt text.](/Media/ss1.png)

## After Security Fix

After implementing security improvements, the scan was executed again.

Result

* No critical vulnerabilities

* Secure infrastructure configuration

* Improved container security
![This is an alt text.](/Media/ss2.png)

## AI Usage Log
### AI Prompt Used
```
Analyze this Terraform security configuration and suggest improvements to harden the infrastructure.
```

### Risks Identified

* Open security group rules

* Metadata service exposure

* Missing encryption configuration

### Security Improvements
| Risk | Fix Implemented |
| ------------- |:-------------:|
| Open security group | Restricted inbound rules |
| Metadata exposure | Enabled IMDSv2 |
| Unencrypted storage | Enabled EBS encryption |

# Screenshots
## Jenkins Pipeline Success
![This is an alt text.](/Media/ss3.png)
![This is an alt text.](/Media/ss3a.png)

## Trivy Security Scan
![This is an alt text.](/Media/ss4.png)

## Application Running
![This is an alt text.](/Media/ss5.png)

##  Demo Video
A short demonstration video showing the entire deployment process.

The video includes

* GitHub repository

* Jenkins pipeline execution

* Security scanning

* Terraform infrastructure deployment

* AWS EC2 instance

* Running application

Video Link:
```
https://drive.google.com/file/d/1bwSS1EEjO696DO0pW3Wswa9j3lIJsJDG/view?usp=sharing
```

## Final Deployment
The application is deployed successfully and accessible via the AWS EC2 public IP.
```
http://PUBLIC-IP:3000
```

## Learning Outcomes

This project demonstrates:

* CI/CD pipeline implementation

* Infrastructure as Code using Terraform

* Containerization using Docker

* Security scanning using Trivy

* Cloud deployment using Amazon Web Services