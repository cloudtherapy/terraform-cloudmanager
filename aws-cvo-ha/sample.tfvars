# AWS Network Infrastructure
aws_profile         = "<aws_profile>"
aws_region          = "<aws_region>"
aws_vpc             = "<aws_vpc>"
aws_subnet_node1    = "<aws_subnet_for_node1>"
aws_subnet_node2    = "<aws_subnet_for_node2>"
aws_subnet_mediator = "<aws_subnet_for_mediator>"

# AWS Network Routing
cluster_ip_management = "10.254.240.11"
cluster_ip_node1      = "10.254.240.22"
cluster_ip_node2      = "10.254.240.33"
cluster_ip_svm        = "10.254.240.44"

# AWS Compute Infrastructure
aws_keypair  = "<aws_ec2_keypair_for_mediator>"
aws_ebs_type = "gp3"
# aws_ebs_iops = 3000
# aws_ebs_throughput = 125
aws_tags = {
  "cetech:contact"  = "cetech"
  "app:description" = "AWS High Availability Cloud Volumes ONTAP"
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
cluster_name     = "AwsCvoHa"
cluster_password = "<cluster_password_for_admin_user>"
# license_option   = "capacity"
# license_package  = "Essential"
# licnese_purchase = "paygo"