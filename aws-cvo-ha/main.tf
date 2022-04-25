provider "netapp-cloudmanager" {
  refresh_token = var.connector_token
  aws_profile   = var.aws_profile
}

provider "aws" {
  alias   = "aws"
  profile = var.aws_profile
  region  = var.aws_region
}

locals {
  # Calculate list of AWS route tables associated with CVO subnets
  aws_route_tables = distinct([for r in data.aws_route_table.this : "${r.route_table_id}"])

  # Override aws_instance_type if specified, else default (m5.2xlarge)
  aws_instance_type = var.aws_instance_type == "" ? null : var.aws_instance_type

  # Override aws_instance_type if specified, else default (Essential)
  capacity_package = var.license_package == "" ? null : var.license_package

  # Calculate string for NetApp CVO HA license type
  license_type = (
    var.license_purchase == "byol" ?
    "ha-cot-premium-byol" :
    (
      var.license_option == "capacity" ?
      "ha-capacity-paygo" :
      "ha-${var.license_option}-paygo"
    )
  )

  # Calculate EBS required parameters
  aws_ebs_iops       = contains(["gp3", "iops"], var.aws_ebs_type) ? var.aws_ebs_iops : null
  aws_ebs_throughput = contains(["gp3"], var.aws_ebs_type) ? var.aws_ebs_throughput : null
}

data "aws_route_table" "this" {
  provider = aws.aws
  for_each = toset([
    var.aws_subnet_node1,
    var.aws_subnet_node2,
    var.aws_subnet_mediator
  ])
  subnet_id = each.key
}

resource "netapp-cloudmanager_cvo_aws" "this" {
  # AWS Network Infrastructure
  region             = var.aws_region
  vpc_id             = var.aws_vpc
  node1_subnet_id    = var.aws_subnet_node1
  node2_subnet_id    = var.aws_subnet_node2
  mediator_subnet_id = var.aws_subnet_mediator

  # AWS Network Routing
  route_table_ids     = local.aws_route_tables
  cluster_floating_ip = var.cluster_ip_management
  data_floating_ip    = var.cluster_ip_node1
  data_floating_ip2   = var.cluster_ip_node2
  # svm_floating_ip     = var.cluster_ip_svm /* Apr 25 deployment is failing when this is enabled */

  # AWS Compute Infrastructure
  instance_type          = local.aws_instance_type
  ebs_volume_type        = "gp3"
  iops                   = local.aws_ebs_iops
  throughput             = local.aws_ebs_throughput
  mediator_key_pair_name = var.aws_keypair
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
  is_ha                 = true
  # failover_mode             = "FloatingIP" /* Apr 25 deployment is failing when this is enabled */
  mediator_assign_public_ip = false
  svm_password              = var.cluster_password
}