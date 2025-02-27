# Web-App-Deployment-on-AWS-EKS
### Automated Web App Deployment on AWS EKS

This project demonstrates how to automate the deployment of a web application on Amazon EKS (Elastic Kubernetes Service) while provisioning the necessary infrastructure using Terraform.


## Overview

Infrastructure Provisioning: Terraform is used to create VPC, subnets, security groups, and IAM roles.

EKS Cluster Setup: An EKS cluster with worker nodes is provisioned.

Automated Deployment: The web application is deployed on the EKS cluster.


## Prerequisites

AWS CLI

Terraform

kubectl

An AWS account with appropriate IAM permissions



## Infrastructure Provisioning with Terraform

**1. Clone this repository:**
```   
   git clone https://github.com/SohelBiswas/aws-eks-terraform.git
   
   cd aws-eks-terraform
```
**2. Initialize Terraform:**
```
   terraform init
```
**3. Plan and apply the Terraform scripts:**
```
   terraform validate
   terraform plan
   terraform apply -auto-approve
```


## Deploying the Web Application

**1. Configure kubectl to use the newly created EKS cluster:**
```
   aws eks update-kubeconfig --region ap-south-1 --name sohel-cluster
```

**2. Deploy the application using Kubernetes manifests:**
```
kubectl apply -f Kubernetes
```

**3. Verify the deployment:**
```
kubectl get pods
kubectl get svc
```
