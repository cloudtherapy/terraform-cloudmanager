## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.10.0 |
| <a name="requirement_netapp-cloudmanager"></a> [netapp-cloudmanager](#requirement\_netapp-cloudmanager) | 22.2.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws.aws"></a> [aws.aws](#provider\_aws.aws) | 4.10.0 |
| <a name="provider_netapp-cloudmanager"></a> [netapp-cloudmanager](#provider\_netapp-cloudmanager) | 22.2.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [netapp-cloudmanager_cvo_aws.this](https://registry.terraform.io/providers/NetApp/netapp-cloudmanager/22.2.2/docs/resources/cvo_aws) | resource |
| [aws_route_table.this](https://registry.terraform.io/providers/hashicorp/aws/4.10.0/docs/data-sources/route_table) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_ebs_iops"></a> [aws\_ebs\_iops](#input\_aws\_ebs\_iops) | NetApp CVO IOPS for cluster nodes EBS | `string` | `"3000"` | no |
| <a name="input_aws_ebs_throughput"></a> [aws\_ebs\_throughput](#input\_aws\_ebs\_throughput) | NetApp CVO throughput for cluster nodes EBS | `string` | `"125"` | no |
| <a name="input_aws_ebs_type"></a> [aws\_ebs\_type](#input\_aws\_ebs\_type) | NetApp CVO AWS EBS type for cluster nodes | `string` | `"gp2"` | no |
| <a name="input_aws_instance_type"></a> [aws\_instance\_type](#input\_aws\_instance\_type) | NetApp CVO AWS instance type for cluster nodes | `string` | `""` | no |
| <a name="input_aws_keypair"></a> [aws\_keypair](#input\_aws\_keypair) | NetApp CVO AWS Keypair for CVO Mediator node | `string` | n/a | yes |
| <a name="input_aws_profile"></a> [aws\_profile](#input\_aws\_profile) | AWS profile for cluster eployment | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS region for cluster deployment | `string` | n/a | yes |
| <a name="input_aws_subnet_mediator"></a> [aws\_subnet\_mediator](#input\_aws\_subnet\_mediator) | NetApp CVO AWS Subnet ID for mediator node | `string` | n/a | yes |
| <a name="input_aws_subnet_node1"></a> [aws\_subnet\_node1](#input\_aws\_subnet\_node1) | NetApp CVO AWS Subnet ID for node 1 | `string` | n/a | yes |
| <a name="input_aws_subnet_node2"></a> [aws\_subnet\_node2](#input\_aws\_subnet\_node2) | NetApp CVO AWS Subnet ID for node 2 | `string` | n/a | yes |
| <a name="input_aws_tags"></a> [aws\_tags](#input\_aws\_tags) | NetApp CVO tags to be applied to the EC2 instances | `map(any)` | `{}` | no |
| <a name="input_aws_vpc"></a> [aws\_vpc](#input\_aws\_vpc) | NetApp CVO AWS VPC | `string` | n/a | yes |
| <a name="input_cluster_ip_management"></a> [cluster\_ip\_management](#input\_cluster\_ip\_management) | NetApp CVO cluster floating IP for management | `string` | n/a | yes |
| <a name="input_cluster_ip_node1"></a> [cluster\_ip\_node1](#input\_cluster\_ip\_node1) | NetApp CVO cluster floating IP for node 1 | `string` | n/a | yes |
| <a name="input_cluster_ip_node2"></a> [cluster\_ip\_node2](#input\_cluster\_ip\_node2) | NetApp CVO cluster floating IP for node 2 | `string` | n/a | yes |
| <a name="input_cluster_ip_svm"></a> [cluster\_ip\_svm](#input\_cluster\_ip\_svm) | NetApp CVO cluster floating IP for svm | `string` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | NetApp CVO cluster name | `string` | n/a | yes |
| <a name="input_cluster_password"></a> [cluster\_password](#input\_cluster\_password) | NetApp CVO password for admin user | `string` | n/a | yes |
| <a name="input_connector_client_id"></a> [connector\_client\_id](#input\_connector\_client\_id) | Client ID of deployed Cloud Manager | `string` | n/a | yes |
| <a name="input_connector_token"></a> [connector\_token](#input\_connector\_token) | Refresh Token of deployed Cloud Manager | `string` | n/a | yes |
| <a name="input_license_option"></a> [license\_option](#input\_license\_option) | NetApp CVO license option [capacity, explore, standard, premium]. Default: capacity | `string` | `"capacity"` | no |
| <a name="input_license_package"></a> [license\_package](#input\_license\_package) | NetApp CVO license capacity package [Freemium, Essential, Professional]. Default: Essential | `string` | `"Essential"` | no |
| <a name="input_license_purchase"></a> [license\_purchase](#input\_license\_purchase) | NetApp CVO license purchase method [paygo, byol]. Default: paygo | `string` | `"paygo"` | no |

## Outputs

No outputs.
