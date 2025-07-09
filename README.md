# CST8918 - Hybrid-H09 Azure Kubernetes Service (AKS) Cluster with Terraform

## Overview

This project provisions an Azure Kubernetes Service (AKS) cluster using Terraform. It includes a resource group and a scalable AKS cluster, designed for deploying containerized applications with monitoring and autoscaling.

---

## Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/downloads)
- [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
- An active Azure subscription
- [kubectl](https://kubernetes.io/docs/tasks/tools/)
- Git

---

## Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/Satyams45/cst8918-w25-h09.git
cd cst8918-w25-h09
```

### 2. Authenticate with Azure

```bash
az login
az account set --subscription "<your-subscription-id>"
```

### 3. Initialize Terraform

```bash
terraform init
```

### 4. Apply Terraform Configuration

Make sure you are using a supported Kubernetes version (e.g., `1.32.5`):

```bash
terraform apply -auto-approve
```

### 5. Get AKS Credentials

```bash
az aks get-credentials --resource-group rg-aks-h09 --name aks-cluster-h09
```

### 6. Deploy Sample App (Optional)

```bash
kubectl apply -f sample-app.yaml
```

---

## Notes

- Avoid pushing `.terraform` and large provider binaries to GitHub.
- If a file over 100MB is committed, use [Git LFS](https://git-lfs.github.com) or clean with `git filter-repo`.

---

## Cleanup

```bash
terraform destroy -auto-approve
```

---

## Author

Satyam Panseriya  
CST8918 – DevOps: Infrastructure as Code  
Professor: Robert McKenney  
