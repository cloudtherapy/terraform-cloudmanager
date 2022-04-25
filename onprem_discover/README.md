## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_netapp-cloudmanager"></a> [netapp-cloudmanager](#requirement\_netapp-cloudmanager) | 22.2.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_netapp-cloudmanager"></a> [netapp-cloudmanager](#provider\_netapp-cloudmanager) | 22.2.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [netapp-cloudmanager_cvo_onprem.this](https://registry.terraform.io/providers/NetApp/netapp-cloudmanager/22.2.2/docs/resources/cvo_onprem) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_onprem"></a> [cluster\_onprem](#input\_cluster\_onprem) | Map of NetApp cluster and IP addresses | `map(any)` | `{}` | no |
| <a name="input_cluster_password"></a> [cluster\_password](#input\_cluster\_password) | NetApp cluster password | `string` | n/a | yes |
| <a name="input_cluster_user"></a> [cluster\_user](#input\_cluster\_user) | NetApp cluster username | `string` | `"admin"` | no |
| <a name="input_connector_client_id"></a> [connector\_client\_id](#input\_connector\_client\_id) | Client ID of deployed Cloud Manager | `string` | n/a | yes |
| <a name="input_connector_token"></a> [connector\_token](#input\_connector\_token) | Refresh Token of deployed Cloud Manager | `string` | n/a | yes |

## Outputs

No outputs.
