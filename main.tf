terraform {
  backend "s3" {
    profile        = "methods-shared"
    bucket         = "methods-shared-terraform"
    dynamodb_table = "methods-shared-terraform"
    region         = "us-east-1"
    key            = "terraform-cloudmanager.tfstate"
  }
}

terraform {
  required_providers {
    netapp-cloudmanager = {
      source  = "NetApp/netapp-cloudmanager"
      version = "22.2.2"
    }
  }
}

provider "netapp-cloudmanager" {
  refresh_token = var.token
  aws_profile   = var.profile
}
