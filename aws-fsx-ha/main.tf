locals {
  # Authorize as user or service account
  connector_refresh_token = var.connector_refresh_token == "" ? null : var.connector_refresh_token
  connector_sa_client_id  = var.connector_sa_client_id == "" ? null : var.connector_sa_client_id
  connector_sa_secret_key = var.connector_sa_secret_key == "" ? null : var.connector_sa_secret_key

  # Calculate list of AWS route tables associated with CVO subnets
  aws_route_tables = distinct([for r in data.aws_route_table.this : "${r.route_table_id}"])
}

provider "netapp-cloudmanager" {
  refresh_token = local.connector_refresh_token
  sa_client_id  = local.connector_sa_client_id
  sa_secret_key = local.connector_sa_secret_key
}

provider "aws" {
  profile = var.aws_profile
  region  = var.aws_region
}

data "aws_route_table" "this" {
  for_each = toset([
    var.aws_subnet_node1,
    var.aws_subnet_node2
  ])
  subnet_id = each.key
}

data "aws_route_tables" "this" {
  vpc_id = var.aws_vpc
}

data "aws_security_groups" "this" {}

resource "netapp-cloudmanager_aws_fsx" "this" {
  # AWS Network Infrastructure
  region              = var.aws_region
  primary_subnet_id   = var.aws_subnet_node1
  secondary_subnet_id = var.aws_subnet_node2

  # AWS Network Routing and Security
  route_table_ids    = [data.aws_route_tables.this.ids[0]]
  security_group_ids = [data.aws_security_groups.this.ids[0]]

  # NetApp Connector (Cloud Manager)
  tenant_id            = var.connector_tenant_id
  workspace_id         = var.connector_workspace_id
  aws_credentials_name = var.connector_fsxn_role

  dynamic "tags" {
    for_each = var.aws_tags

    content {
      tag_key   = tags.key
      tag_value = tags.value
    }
  }

  # NetApp Cluster (Amazon FSx ONTAP)
  name                = var.cluster_name
  fsx_admin_password  = var.cluster_password
  throughput_capacity = var.fsx_throughput
}