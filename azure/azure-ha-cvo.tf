resource "netapp-cloudmanager_cvo_azure" "cvo-azure" {
  provider             = netapp-cloudmanager
  name                 = "tikki"
  location             = "eastus"
  subscription_id      = "bde3e387-ffd3-4ecb-b137-e3aad84caf11"
  vnet_id              = "vnet-shared-10-253-24"
  subnet_id            = "snet-shared-10-253-24-0"
  vnet_resource_group  = "rg-shared-services"
  data_encryption_type = "AZURE"
  azure_tag {
    tag_key   = "cetech:contact"
    tag_value = "cmoreira"
  }
  azure_tag {
    tag_key   = "app:desciption"
    tag_value = "NetApp CVO POC"
  }
  storage_type  = "Premium_LRS"
  svm_password  = var.netapp_pass
  client_id     = var.clientid
  capacity_tier = "Blob"
  is_ha         = true
  license_type  = "ha-capacity-paygo"
}