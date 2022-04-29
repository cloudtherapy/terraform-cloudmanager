terraform {
  required_providers {
    # https://registry.terraform.io/providers/NetApp/netapp-cloudmanager/latest/docs
    netapp-cloudmanager = {
      source  = "NetApp/netapp-cloudmanager"
      version = "22.2.2"
    }
    # https://registry.terraform.io/providers/hashicorp/aws/latest/docs
    aws = {
      source  = "hashicorp/aws"
      version = "4.10.0"
    }
  }
}