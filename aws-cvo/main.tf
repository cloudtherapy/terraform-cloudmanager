locals {
  # Authorize as user or service account
  connector_refresh_token = var.connector_refresh_token == "" ? null : var.connector_refresh_token
  connector_sa_client_id  = var.connector_sa_client_id == "" ? null : var.connector_sa_client_id
  connector_sa_secret_key = var.connector_sa_secret_key == "" ? null : var.connector_sa_secret_key

  # Override aws_instance_type if specified, else default (m5.2xlarge)
  aws_instance_type = var.aws_instance_type == "" ? null : var.aws_instance_type

  # Override aws_instance_type if specified, else default (Essential)
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

  # Calculate EBS required parameters
  aws_ebs_iops       = contains(["gp3", "iops"], var.aws_ebs_type) ? var.aws_ebs_iops : null
  aws_ebs_throughput = contains(["gp3"], var.aws_ebs_type) ? var.aws_ebs_throughput : null
}

provider "netapp-cloudmanager" {
  refresh_token = local.connector_refresh_token
  sa_client_id  = local.connector_sa_client_id
  sa_secret_key = local.connector_sa_secret_key
}

resource "netapp-cloudmanager_cvo_aws" "this" {
  # AWS Network Infrastructure
  region    = var.aws_region
  vpc_id    = var.aws_vpc
  subnet_id = var.aws_subnet

  # AWS Compute Infrastructure
  instance_type   = local.aws_instance_type
  ebs_volume_type = "gp3"
  iops            = local.aws_ebs_iops
  throughput      = local.aws_ebs_throughput

  dynamic "aws_tag" {
    for_each = var.aws_tags

    content {
      tag_key   = aws_tag.key
      tag_value = aws_tag.value
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