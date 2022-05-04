terraform {
  required_providers {
    # https://registry.terraform.io/providers/NetApp/netapp-cloudmanager/latest/docs
    netapp-cloudmanager = {
      source  = "NetApp/netapp-cloudmanager"
      version = "22.4.0"
    }
  }
}