# AWS Network Infrastructure
aws_profile      = "<aws_profile>"
aws_region       = "<aws_region>"
aws_vpc          = "<aws_vpc>"
aws_subnet_node1 = "<aws_subnet_for_node1>"
aws_subnet_node2 = "<aws_subnet_for_node2>"

# NetApp Connector (Cloud Manager)
connector_client_id     = "<client_id_for_netapp_cloud_connector>"
connector_sa_client_id  = "<client_id_for_netapp_cloud_connector_service_account>"
connector_sa_secret_key = "<secret_key_for_netapp_cloud_connector_service_account>"

# NetApp Cluster (Amazon FSx ONTAP)
cluster_name            = "AwsFSxN"
cluster_password        = "<cluster_password_for_admin_user>"
connector_refresh_token = "<refresh_token_from_netapp_cloud_central>"
connector_workspace_id  = "workspace_id_for_netapp_cloud_connector"
connector_tenant_id     = "tenant_id_for_netapp_cloud_connector"
connector_fsxn_role     = "credential_role_defined_in_netapp_cloud_connector"

# AWS Tags
aws_tags = {
  "cetech:contact"  = "USERNAME"
  "app:description" = "Amazon FSx ONTAP"
}