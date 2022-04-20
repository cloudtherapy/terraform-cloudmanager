variable "profile" {
  description = "AWS Profile to be used for deployment"
  type        = string
  default     = "methods-shared"
}
variable "token" {
  description = "Refresh Token of deployed Cloud Manager"
  type        = string
  sensitive   = true
}

variable "clientid" {
  description = "Client ID of deployed Cloud Manager"
  type        = string
  sensitive   = true
}

variable "region" {
  description = "AWS region where CVO will be deployed"
  type        = string
  default     = "us-east-1"
}

variable "onprem_user" {
  description = "Username of OnPrem NetApp"
  type        = string
  default     = "admin"
}

variable "netapp_pass" {
  description = "Password used for CVO and OnPrem NetApp"
  type        = string
  sensitive   = true
}