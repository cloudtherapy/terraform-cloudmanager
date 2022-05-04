# Azure Network Infrastructure
azure_subscription = "<azure_subscription_id>"
azure_location     = "<azure_location>"
azure_vnet_rg      = "<azure_vnet_resource_group>"
azure_vnet         = "<azure_vnet_name>"
azure_subnet       = "<azure_vnet_subnet_name>"

# Azure Compute Infrastructure
azure_tags = {
  "cetech:contact"  = "ceteceh"
  "app:description" = "Azure Single Node Cloud Volumes ONTAP"
}

# NetApp Connector (Cloud Manager)
connector_client_id = "<client_id_for_netapp_cloud_connector>"
# Authorize as user or service account
# User Refresh Token
# connector_refresh_token = "<refresh_token_from_netapp_cloud_central>"
# Service Account Client ID and Secret Key
connector_sa_client_id  = "<client_id_for_netapp_cloud_connector_service_account>"
connector_sa_secret_key = "<secret_key_for_netapp_cloud_connector_service_account>"

# NetApp Cluster (Cloud Volumes ONTAP)
cluster_name     = "AzureCvo"
cluster_password = "<cluster_password_for_admin_user>"
# license_option   = "capacity"
# license_package  = "Essential"
# license_purchase = "paygo"