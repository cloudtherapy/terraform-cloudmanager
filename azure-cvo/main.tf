locals {
  # Authorize as user or service account
  connector_refresh_token = var.connector_refresh_token == "" ? null : var.connector_refresh_token
  connector_sa_client_id  = var.connector_sa_client_id == "" ? null : var.connector_sa_client_id
  connector_sa_secret_key = var.connector_sa_secret_key == "" ? null : var.connector_sa_secret_key

  # Override instance_type if specified, else default (Standard_DS4_v2)
  instance_type = var.instance_type == "" ? null : var.instance_type

  # Override capacity_tier if specified, else default (Blob)
  capacity_tier = var.capacity_tier == "" ? null : var.capacity_tier

  # Override storage_type if specified, else default (Premium_LRS)
  storage_type = var.storage_type == "" ? null : var.storage_type

  # Override data_encryption_type if specified, else default (AZURE)
  data_encryption_type = var.data_encryption_type == "" ? null : var.data_encryption_type

  # Override azure_instance_type if specified, else default (Essential)
  capacity_package = var.license_package == "" ? null : var.license_package

  # Calculate string for NetApp CVO HA license type
  license_type = (
    var.license_purchase == "byol" ?
    "cot-premium-byol" :
    (
      var.license_option == "capacity" ?
      "capacity-paygo" :
      "${var.license_option}-paygo"
    )
  )
}

provider "netapp-cloudmanager" {
  refresh_token = local.connector_refresh_token
  sa_client_id  = local.connector_sa_client_id
  sa_secret_key = local.connector_sa_secret_key
}

resource "netapp-cloudmanager_cvo_azure" "this" {
  # Azure Network Infrastructure
  subscription_id     = var.azure_subscription
  location            = var.azure_location
  vnet_id             = var.azure_vnet
  subnet_id           = var.azure_subnet
  vnet_resource_group = var.azure_vnet_rg

  # Azure Compute Infrastructure
  instance_type        = local.instance_type
  storage_type         = local.storage_type
  capacity_tier        = local.capacity_tier
  data_encryption_type = local.data_encryption_type

  dynamic "azure_tag" {
    for_each = var.azure_tags

    content {
      tag_key   = azure_tag.key
      tag_value = azure_tag.value
    }
  }

  # NetApp Connector (Cloud Manager)
  client_id = var.connector_client_id

  # NetApp Cluster (Cloud Volumes ONTAP)
  name                  = var.cluster_name
  license_type          = local.license_type
  capacity_package_name = local.capacity_package
  svm_password          = var.cluster_password
}