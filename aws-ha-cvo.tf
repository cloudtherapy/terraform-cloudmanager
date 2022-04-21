resource "netapp-cloudmanager_cvo_aws" "cvo-aws" {
  provider = netapp-cloudmanager
  name     = "plagg"
  region   = "us-east-1"
  vpc_id   = "vpc-008acf686c21d91c9"
  aws_tag {
    tag_key   = "cetech:contact"
    tag_value = "cmoreira"
  }
  aws_tag {
    tag_key   = "app:description"
    tag_value = "NetApp CVO POC"
  }
  svm_password              = var.netapp_pass
  client_id                 = var.clientid
  is_ha                     = true
  instance_type             = "m5.xlarge"
  failover_mode             = "FloatingIP"
  node1_subnet_id           = "subnet-074e8c769e120edd9"
  node2_subnet_id           = "subnet-0589cbf26071579eb"
  mediator_subnet_id        = "subnet-04ea14a4af374c6e0"
  mediator_assign_public_ip = false
  mediator_key_pair_name    = "ansible"
  cluster_floating_ip       = "10.254.240.11"
  data_floating_ip          = "10.254.240.22"
  data_floating_ip2         = "10.254.240.33"
  svm_floating_ip           = "10.254.240.44"
  route_table_ids           = ["rtb-07be04a5b047e1a77"]
  license_type              = "ha-capacity-paygo"
}