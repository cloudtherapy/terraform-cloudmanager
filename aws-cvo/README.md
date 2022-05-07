## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_netapp-cloudmanager"></a> [netapp-cloudmanager](#requirement\_netapp-cloudmanager) | 22.4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_netapp-cloudmanager"></a> [netapp-cloudmanager](#provider\_netapp-cloudmanager) | 22.4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [netapp-cloudmanager_cvo_aws.this](https://registry.terraform.io/providers/NetApp/netapp-cloudmanager/22.4.0/docs/resources/cvo_aws) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_ebs_iops"></a> [aws\_ebs\_iops](#input\_aws\_ebs\_iops) | NetApp CVO IOPS for cluster nodes EBS | `string` | `"3000"` | no |
| <a name="input_aws_ebs_throughput"></a> [aws\_ebs\_throughput](#input\_aws\_ebs\_throughput) | NetApp CVO throughput for cluster nodes EBS | `string` | `"125"` | no |
| <a name="input_aws_ebs_type"></a> [aws\_ebs\_type](#input\_aws\_ebs\_type) | NetApp CVO AWS EBS type for cluster nodes | `string` | `"gp2"` | no |
| <a name="input_aws_instance_type"></a> [aws\_instance\_type](#input\_aws\_instance\_type) | NetApp CVO AWS instance type for cluster nodes | `string` | `""` | no |
| <a name="input_aws_profile"></a> [aws\_profile](#input\_aws\_profile) | AWS profile for cluster eployment | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS region for cluster deployment | `string` | n/a | yes |
| <a name="input_aws_subnet"></a> [aws\_subnet](#input\_aws\_subnet) | NetApp CVO AWS Subnet ID | `string` | n/a | yes |
| <a name="input_aws_tags"></a> [aws\_tags](#input\_aws\_tags) | NetApp CVO tags to be applied to the EC2 instances | `map(any)` | `{}` | no |
| <a name="input_aws_vpc"></a> [aws\_vpc](#input\_aws\_vpc) | NetApp CVO AWS VPC | `string` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | NetApp CVO cluster name | `string` | n/a | yes |
| <a name="input_cluster_password"></a> [cluster\_password](#input\_cluster\_password) | NetApp CVO password for admin user | `string` | n/a | yes |
| <a name="input_connector_client_id"></a> [connector\_client\_id](#input\_connector\_client\_id) | Client ID of deployed Cloud Manager | `string` | n/a | yes |
| <a name="input_connector_refresh_token"></a> [connector\_refresh\_token](#input\_connector\_refresh\_token) | Refresh token for NetApp Cloud Connector user | `string` | `""` | no |
| <a name="input_connector_sa_client_id"></a> [connector\_sa\_client\_id](#input\_connector\_sa\_client\_id) | Client ID for NetApp Cloud Connector service account | `string` | `""` | no |
| <a name="input_connector_sa_secret_key"></a> [connector\_sa\_secret\_key](#input\_connector\_sa\_secret\_key) | Secret key for NetApp Cloud Connector service account | `string` | `""` | no |
| <a name="input_license_option"></a> [license\_option](#input\_license\_option) | NetApp CVO license option [capacity, explore, standard, premium]. Default: capacity | `string` | `"capacity"` | no |
| <a name="input_license_package"></a> [license\_package](#input\_license\_package) | NetApp CVO license capacity package [Freemium, Essential, Professional]. Default: Essential | `string` | `"Essential"` | no |
| <a name="input_license_purchase"></a> [license\_purchase](#input\_license\_purchase) | NetApp CVO license purchase method [paygo, byol]. Default: paygo | `string` | `"paygo"` | no |

## Outputs

No outputs.
