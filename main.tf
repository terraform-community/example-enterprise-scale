module "enterprise_scale" {
  source  = "Azure/caf-enterprise-scale/azurerm"
  version = "1.1.0"

  providers = {
    azurerm              = azurerm
    azurerm.connectivity = azurerm.connectivity
    azurerm.management   = azurerm.management
  }

  root_parent_id = data.azurerm_client_config.core.tenant_id
  root_id        = "demo"
  root_name      = var.demo_name

  # Management
  deploy_management_resources = var.management_subscription_id != null ? true : false
  subscription_id_management  = var.management_subscription_id != null ? var.management_subscription_id : ""

  # Connectivity
  deploy_connectivity_resources = var.connectivity_subscription_id != null ? true : false
  subscription_id_connectivity  = var.connectivity_subscription_id != null ? var.connectivity_subscription_id : ""
}

