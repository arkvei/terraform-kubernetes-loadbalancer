# Terraform Kubernetes Load Balancer

**Project Type:** Cloud Infrastructure & DevOps  
**Status:** ✅ COMPLETED  
**Date:** February 2026  
**Tech Stack:** Terraform, Google Kubernetes Engine (GKE), Kubernetes Services, NGINX

---

## 🎯 Project Overview

This project demonstrates the deployment of a **Google Kubernetes Engine (GKE) cluster** on Google Cloud using **Terraform**, coupled with a **LoadBalancer service** to expose a sample NGINX application. It showcases Infrastructure as Code (IaC) principles for managing cloud resources and Kubernetes deployments.

**Key Achievements:**
- Automated GKE cluster provisioning with Terraform.
- Configured network, subnetwork, and static IP for the cluster.
- Deployed a Kubernetes LoadBalancer service for external access.
- Demonstrated a robust and reproducible cloud infrastructure setup.

---

## 🛠️ Technologies & Tools

- **Infrastructure as Code:** Terraform
- **Cloud Platform:** Google Cloud Platform (GCP)
- **Container Orchestration:** Google Kubernetes Engine (GKE)
- **Networking:** GCP VPC, Static IP, LoadBalancer Service
- **Web Server:** NGINX (deployed as a sample application)

---

## 🏗️ Architecture

The architecture illustrates the flow from user access to the NGINX application running within the GKE cluster, provisioned and managed by Terraform.

![Cloud Infrastructure Architecture](architecture_diagram.png)

**Architecture Components:**
- **Users:** Access the NGINX application via the LoadBalancer.
- **Terraform CLI:** Provisions and manages the GCP resources.
- **Google Cloud:** Hosts the entire infrastructure.
- **VPC Network:** Provides isolated network environment.
- **Static IP:** Public IP address for external access.
- **Subnetwork:** Defines the IP range for resources within the VPC.
- **GKE Cluster:** Managed Kubernetes service.
- **Staging Namespace:** Logical isolation for application deployment.
- **Replication Controller:** Manages NGINX Pods.
- **NGINX Pods:** Containerized NGINX web servers.
- **LoadBalancer Service:** Routes external traffic to NGINX Pods.

---

## 🚀 Getting Started

### Prerequisites
- **GCP Account:** An active Google Cloud Platform account with billing enabled.
- **gcloud CLI:** Installed and authenticated with your GCP project.
- **Terraform:** Installed locally (version 1.0+).

### Deployment Steps

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/arkvei/terraform-kubernetes-loadbalancer.git
    cd terraform-kubernetes-loadbalancer
    ```

2.  **Initialize Terraform:**
    ```bash
    terraform init
    ```

3.  **Review and Apply Terraform Plan:**
    ```bash
    terraform plan -var="region=us-central1" -var="location=us-central1-a"
    terraform apply -var="region=us-central1" -var="location=us-central1-a"
    ```
    *Replace `us-central1` and `us-central1-a` with your desired region and zone.*

4.  **Access the NGINX Application:**
    After successful deployment, Terraform will output the `load-balancer-ip`. Access your NGINX application using this IP in your web browser.

---

## 📋 Project Structure

```text
terraform-kubernetes-loadbalancer/
├── README.md                   # Project overview and documentation
├── architecture_diagram.png    # Infrastructure visualization
├── .gitignore                  # Specifies intentionally untracked files
├── terraform/                  # Terraform configuration files
│   ├── main.tf                 # Main Terraform configuration
│   ├── variables.tf            # Input variables for Terraform
│   └── k8s.tf                  # Kubernetes resources defined by Terraform
└── kubernetes/                 # Kubernetes manifest files (e.g., deployments, services)
    └── nginx-deployment.yaml   # Example NGINX deployment (placeholder)
```

---

## 📄 License

This project is licensed under the MIT License.

---

## 👤 Contact

For questions or collaboration opportunities, please reach out through GitHub.
