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
| [netapp-cloudmanager_cvo_azure.this](https://registry.terraform.io/providers/NetApp/netapp-cloudmanager/22.4.0/docs/resources/cvo_azure) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azure_location"></a> [azure\_location](#input\_azure\_location) | Azure location for cluster deployment | `string` | n/a | yes |
| <a name="input_azure_subnet"></a> [azure\_subnet](#input\_azure\_subnet) | NetApp CVO Azure subnet ID | `string` | n/a | yes |
| <a name="input_azure_subscription"></a> [azure\_subscription](#input\_azure\_subscription) | Azure subscription for cluster deployment | `string` | n/a | yes |
| <a name="input_azure_tags"></a> [azure\_tags](#input\_azure\_tags) | NetApp CVO tags to be applied to the Azure VM | `map(any)` | `{}` | no |
| <a name="input_azure_vnet"></a> [azure\_vnet](#input\_azure\_vnet) | NetApp CVO Azure vnet ID | `string` | n/a | yes |
| <a name="input_azure_vnet_rg"></a> [azure\_vnet\_rg](#input\_azure\_vnet\_rg) | Netapp CVO Azure resource group | `string` | n/a | yes |
| <a name="input_capacity_tier"></a> [capacity\_tier](#input\_capacity\_tier) | NetApp CVO Azure data tier | `string` | `""` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | NetApp CVO cluster name | `string` | n/a | yes |
| <a name="input_cluster_password"></a> [cluster\_password](#input\_cluster\_password) | NetApp CVO password for admin user | `string` | n/a | yes |
| <a name="input_connector_client_id"></a> [connector\_client\_id](#input\_connector\_client\_id) | Client ID of deployed Cloud Manager | `string` | n/a | yes |
| <a name="input_connector_refresh_token"></a> [connector\_refresh\_token](#input\_connector\_refresh\_token) | Refresh token for NetApp Cloud Connector user | `string` | `""` | no |
| <a name="input_connector_sa_client_id"></a> [connector\_sa\_client\_id](#input\_connector\_sa\_client\_id) | Client ID for NetApp Cloud Connector service account | `string` | `""` | no |
| <a name="input_connector_sa_secret_key"></a> [connector\_sa\_secret\_key](#input\_connector\_sa\_secret\_key) | Secret key for NetApp Cloud Connector service account | `string` | `""` | no |
| <a name="input_data_encryption_type"></a> [data\_encryption\_type](#input\_data\_encryption\_type) | NetApp CVO Azure data encryption type | `string` | `""` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | NetApp CVO Azure VM type for cluster nodes | `string` | `""` | no |
| <a name="input_license_option"></a> [license\_option](#input\_license\_option) | NetApp CVO license option [capacity, explore, standard, premium]. Default: capacity | `string` | `"capacity"` | no |
| <a name="input_license_package"></a> [license\_package](#input\_license\_package) | NetApp CVO license capacity package [Freemium, Essential, Professional]. Default: Essential | `string` | `"Essential"` | no |
| <a name="input_license_purchase"></a> [license\_purchase](#input\_license\_purchase) | NetApp CVO license purchase method [paygo, byol]. Default: paygo | `string` | `"paygo"` | no |
| <a name="input_storage_type"></a> [storage\_type](#input\_storage\_type) | NetApp CVO Azure storage type | `string` | `""` | no |

## Outputs

No outputs.
