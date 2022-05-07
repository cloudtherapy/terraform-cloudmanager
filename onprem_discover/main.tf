provider "netapp-cloudmanager" {
  refresh_token = var.connector_token
}

resource "netapp-cloudmanager_cvo_onprem" "this" {
  for_each          = var.cluster_onprem
  name              = each.key
  cluster_address   = each.value
  cluster_user_name = var.cluster_user
  cluster_password  = var.cluster_password
  client_id         = var.connector_client_id
  location          = "ON_PREM"
}