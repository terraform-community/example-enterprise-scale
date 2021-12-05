# Data sources
data "azurerm_client_config" "core" {}

# Input variables
variable "demo_name" {
  type        = string
  description = "Used for customizing the demonstration, if wanted."
  default     = null
}
