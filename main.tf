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
  deploy_management_resources = true
  subscription_id_management  = var.management_subscription_id

  # Connectivity
  deploy_connectivity_resources = true
  subscription_id_connectivity  = var.connectivity_subscription_id

  # Landing Zones
  custom_landing_zones = {
    "production" = {

      display_name               = "${format("%s Production", var.demo_name)}"
      parent_management_group_id = "demo-landing-zones"
      subscription_ids           = []

      archetype_config = {
        archetype_id   = "default_empty"
        parameters     = {}
        access_control = {}
      }

    }
  }
}

