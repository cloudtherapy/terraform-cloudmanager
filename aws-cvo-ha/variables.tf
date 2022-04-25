# AWS Network Infrastructure
variable "aws_profile" {
  description = "AWS profile for cluster eployment"
  type        = string
}
variable "aws_region" {
  description = "AWS region for cluster deployment"
  type        = string
}
variable "aws_vpc" {
  description = "NetApp CVO AWS VPC"
  type        = string
}
variable "aws_subnet_node1" {
  description = "NetApp CVO AWS Subnet ID for node 1"
  type        = string
}
variable "aws_subnet_node2" {
  description = "NetApp CVO AWS Subnet ID for node 2"
  type        = string
}
variable "aws_subnet_mediator" {
  description = "NetApp CVO AWS Subnet ID for mediator node"
  type        = string
}

# AWS Network Routing
variable "cluster_ip_management" {
  description = "NetApp CVO cluster floating IP for management"
  type        = string
}

variable "cluster_ip_node1" {
  description = "NetApp CVO cluster floating IP for node 1"
  type        = string
}

variable "cluster_ip_node2" {
  description = "NetApp CVO cluster floating IP for node 2"
  type        = string
}

variable "cluster_ip_svm" {
  description = "NetApp CVO cluster floating IP for svm"
  type        = string
}

# AWS Compute Infrastructure
/*
Capacity - m5.2xlarge
Explore - m5.xlarge
Standard - m5.2xlarge, r5.xlarge
Premium - m5.54xlarge, r5.x2large, c4.8xlarge
*/
variable "aws_instance_type" {
  description = "NetApp CVO AWS instance type for cluster nodes"
  type        = string
  default     = ""
}
variable "aws_ebs_type" {
  description = "NetApp CVO AWS EBS type for cluster nodes"
  type        = string
  default     = "gp2"
}
variable "aws_ebs_iops" {
  description = "NetApp CVO IOPS for cluster nodes EBS"
  type        = string
  default     = "3000"
}
variable "aws_ebs_throughput" {
  description = "NetApp CVO throughput for cluster nodes EBS"
  type        = string
  default     = "125"
}
variable "aws_keypair" {
  description = "NetApp CVO AWS Keypair for CVO Mediator node"
  type        = string
}
variable "aws_tags" {
  description = "NetApp CVO tags to be applied to the EC2 instances"
  type        = map(any)
  default     = {}
}

# NetApp Connector (Cloud Manager)
variable "connector_client_id" {
  description = "Client ID of deployed Cloud Manager"
  type        = string
  sensitive   = true
}
variable "connector_token" {
  description = "Refresh Token of deployed Cloud Manager"
  type        = string
  sensitive   = true
}

# NetApp Cluster (Cloud Volumes ONTAP)
variable "cluster_name" {
  description = "NetApp CVO cluster name"
  type        = string
}
variable "cluster_password" {
  description = "NetApp CVO password for admin user"
  type        = string
  sensitive   = true
}
variable "license_option" {
  description = "NetApp CVO license option [capacity, explore, standard, premium]. Default: capacity"
  type        = string
  default     = "capacity"

  validation {
    condition     = contains(["capacity", "explore", "standard", "premium"], var.license_option)
    error_message = "ERROR: license_option must be 'capacity','explore','standard', or 'premium'."
  }
}
variable "license_package" {
  description = "NetApp CVO license capacity package [Freemium, Essential, Professional]. Default: Essential"
  type        = string
  default     = "Essential"

  validation {
    condition     = contains(["", "Freemium", "Essential", "Professional"], var.license_package)
    error_message = "ERROR: capacity_package must be 'Freemium', 'Essential', or 'Professional'."
  }
}
variable "license_purchase" {
  description = "NetApp CVO license purchase method [paygo, byol]. Default: paygo"
  type        = string
  default     = "paygo"

  validation {
    condition     = contains(["paygo", "byol"], var.license_purchase)
    error_message = "ERROR: license_purchase must be 'paygo' or 'byol'."
  }
}