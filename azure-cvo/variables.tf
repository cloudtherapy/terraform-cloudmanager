# AWS Network Infrastructure
variable "azure_subscription" {
  description = "Azure subscription for cluster deployment"
  type        = string
}
variable "azure_location" {
  description = "Azure location for cluster deployment"
  type        = string
}
variable "azure_vnet_rg" {
  description = "Netapp CVO Azure resource group"
  type        = string
}
variable "azure_vnet" {
  description = "NetApp CVO Azure vnet ID"
  type        = string
}
variable "azure_subnet" {
  description = "NetApp CVO Azure subnet ID"
  type        = string
}

# Azure Compute Infrastructure
/*
Capacity - Standard_DS4_v2
Explore - Standard_DS4_v2
Standard - Standard_DS4_v2, Standard_DS13_v2, Standard_L8s_v2
Premium - Standard_DS5_v2, Standard_DS14_v2
Paygo - Any
*/
variable "instance_type" {
  description = "NetApp CVO Azure VM type for cluster nodes"
  type        = string
  default     = ""
}
variable "capacity_tier" {
  description = "NetApp CVO Azure data tier"
  type        = string
  default     = ""

  validation {
    condition     = contains(["", "Blob", "NONE"], var.capacity_tier)
    error_message = "ERROR: capacity_tier must be 'Blob' or 'NONE'."
  }
}
variable "storage_type" {
  description = "NetApp CVO Azure storage type"
  type        = string
  default     = ""

  validation {
    condition     = contains(["", "Premium_LRS", "Standard_LRS", "StandardSSD_LRS"], var.storage_type)
    error_message = "ERROR: storage_type must be 'Premium_LRS', 'Standard_LRS', or 'StandardSSD_LRS'."
  }
}
variable "data_encryption_type" {
  description = "NetApp CVO Azure data encryption type"
  type        = string
  default     = ""

  validation {
    condition     = contains(["", "AZURE", "NONE"], var.data_encryption_type)
    error_message = "ERROR: data_encryption_type must be 'AZURE' or 'NONE'."
  }
}
variable "azure_tags" {
  description = "NetApp CVO tags to be applied to the Azure VM"
  type        = map(any)
  default     = {}
}

# NetApp Connector (Cloud Manager)
variable "connector_client_id" {
  description = "Client ID of deployed Cloud Manager"
  type        = string
  sensitive   = true
}
variable "connector_refresh_token" {
  description = "Refresh token for NetApp Cloud Connector user"
  type        = string
  default     = ""
  sensitive   = true
}
variable "connector_sa_client_id" {
  description = "Client ID for NetApp Cloud Connector service account"
  type        = string
  default     = ""
  sensitive   = true
}
variable "connector_sa_secret_key" {
  description = "Secret key for NetApp Cloud Connector service account"
  type        = string
  default     = ""
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