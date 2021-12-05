# Data sources
data "azurerm_client_config" "core" {}

# Input variables
variable "demo_name" {
  type        = string
  description = "Used for customizing the demonstration, if wanted."
  default     = null
}
variable "management_subscription_id" {
  type        = string
  description = "Subscription ID for the management subscription."
}
variable "connectivity_subscription_id" {
  type        = string
  description = "Subscription ID for the connectivity subscription."
}
variable "prod_subscription_id" {
  type        = string
  description = "Subscription ID for the production landing zone subscription."
  default     = null
}
