resource "netapp-cloudmanager_aws_fsx" "aws-fsx" {
  provider            = netapp-cloudmanager
  name                = "foxxy"
  region              = "us-east-1"
  primary_subnet_id   = "subnet-074e8c769e120edd9"
  secondary_subnet_id = "subnet-0589cbf26071579eb"
  tenant_id           = "account-69NQb6MX"
  workspace_id        = "workspace-Jd0espMc"
  tags {
    tag_key   = "cetech:contact"
    tag_value = "cmoreira"
  }
  tags {
    tag_key   = "app:description"
    tag_value = "NetApp AWS FSx POC"
  }
  fsx_admin_password         = var.netapp_pass
  throughput_capacity        = 512
  storage_capacity_size      = 1024
  storage_capacity_size_unit = "GiB"
  aws_credentials_name = "ontap-fsx-role"
}