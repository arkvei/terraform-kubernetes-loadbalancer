variable "region" {
  type        = string
  description = "The region where resources will be created."
  default     = "us-central1"
}

variable "location" {
  type        = string
  description = "The zone or region for the Kubernetes cluster."
  default     = "us-central1-a"
}

variable "network_name" {
  type        = string
  description = "The name of the network and cluster."
  default     = "hands-of-labs-cluster"
}
