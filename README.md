# Hands of Labs Practice: Kubernetes Load Balancer with Terraform

This project demonstrates how to provision a Kubernetes cluster and deploy a Load Balancer service using Terraform. It is part of my technical practice to showcase experience with Infrastructure as Code (IaC) and cloud orchestration.

## Overview

This repository contains Terraform configurations to:
1.  **Provision a GKE Cluster**: Set up a managed Kubernetes cluster on Google Cloud Platform.
2.  **Configure Networking**: Create a dedicated VPC network and subnetwork for the cluster.
3.  **Deploy a Service**: Use the Kubernetes provider to deploy an NGINX service with a LoadBalancer type.
4.  **Manage Resources**: Demonstrate full lifecycle management including creation, update, and deletion of resources.

## Project Structure

- `main.tf`: Defines the infrastructure resources (Network, Subnetwork, GKE Cluster, Node Pool).
- `k8s.tf`: Configures the Kubernetes provider and defines the K8s resources (Namespace, Service, Replication Controller).
- `variables.tf`: Contains the variable definitions for easy configuration.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed.
- [Google Cloud SDK (gcloud)](https://cloud.google.com/sdk/docs/install) installed and authenticated.
- A Google Cloud Project with billing enabled.

## Usage

1.  **Initialize Terraform**:
    ```bash
    terraform init
    ```

2.  **Review the Plan**:
    ```bash
    terraform plan -var="region=us-central1" -var="location=us-central1-a"
    ```

3.  **Apply the Configuration**:
    ```bash
    terraform apply -var="region=us-central1" -var="location=us-central1-a"
    ```

4.  **Verify the Deployment**:
    Once the apply is complete, you will receive the `load-balancer-ip`. You can access the NGINX welcome page using this IP.

## Why Terraform?

- **Unified Language**: Provision infrastructure and deploy applications using the same configuration language.
- **Drift Detection**: Ensure the real-world state matches the intended configuration.
- **Full Lifecycle Management**: Single command to manage the entire stack.
- **Dependency Graph**: Terraform automatically handles the order of resource creation based on relationships.

---
*This project is a personal practice lab for professional development.*
