resource "netapp-cloudmanager_cvo_onprem" "aruba" {
  provider          = netapp-cloudmanager
  name              = "aruba"
  cluster_address   = "10.227.0.21"
  cluster_user_name = var.onprem_user
  cluster_password  = var.netapp_pass
  client_id         = var.clientid
  location          = "ON_PREM"
}

resource "netapp-cloudmanager_cvo_onprem" "spinboro" {
  provider          = netapp-cloudmanager
  name              = "spinboro"
  cluster_address   = "10.227.0.51"
  cluster_user_name = var.onprem_user
  cluster_password  = var.netapp_pass
  client_id         = var.clientid
  location          = "ON_PREM"
}

resource "netapp-cloudmanager_cvo_onprem" "canada" {
  provider          = netapp-cloudmanager
  name              = "canada"
  cluster_address   = "10.220.33.61"
  cluster_user_name = var.onprem_user
  cluster_password  = var.netapp_pass
  client_id         = var.clientid
  location          = "ON_PREM"
}

resource "netapp-cloudmanager_cvo_onprem" "america" {
  provider          = netapp-cloudmanager
  name              = "america"
  cluster_address   = "10.220.33.81"
  cluster_user_name = var.onprem_user
  cluster_password  = var.netapp_pass
  client_id         = var.clientid
  location          = "ON_PREM"
}