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

# On-Premises NetApp Clusters
variable "cluster_onprem" {
  description = "Map of NetApp cluster and IP addresses"
  type        = map(any)
  default     = {}
}
variable "cluster_user" {
  description = "NetApp cluster username"
  type        = string
  default     = "admin"
}
variable "cluster_password" {
  description = "NetApp cluster password"
  type        = string
  sensitive   = true
}