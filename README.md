# Terraform for NetApp Cloud

Terraform templates for NetApp Cloud Solutions using the [netapp-cloudmanager](https://registry.terraform.io/providers/NetApp/netapp-cloudmanager/latest) provider.

## Solutions

Solution | Descrption | Requirements |
----------|------------|--------------|
[aws-cvo-ha](aws-cvo-ha/) | Cloud Volumes ONTAP HA on AWS | <ul><li>Cloud Connector authorized to deploy in AWS</li><li>VPC with 3+ Subnets (public or private)</li></ul> |
[aws-cvo](aws-cvo/) | Cloud Volumes ONTAP on AWS | <ul><li>Cloud Connector authorized to deploy in AWS</li><li>VPC with 1+ Subnet (public or private)</li></ul> |
[azure-cvo-ha](azure-cvo-ha/) | Cloud Volumes ONTAP HA on Azure | <ul><li>Cloud Connector authorized to deploy in Azure</li><li>VNET with 3+ Subnets</li></ul> |
[azure-cvo](azure-cvo/) | Cloud Volumes ONTAP on Azure | <ul><li>Cloud Connector authorized to deploy in Azure</li><li>VNET with 1+ Subnet</li></ul> |
[onprem-discover](onprem-discover/) | Discover existing NetApp clusters in an existing Cloud Connector | <ul><li>Cloud Connector with network connectivity to the on-premise NetApp Clusters</li></ul> |
