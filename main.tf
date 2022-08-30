data "azurerm_client_config" "current" {}

resource "azurerm_role_assignment" "appconf_dataowner" {
  scope                = var.appconf_id 
  role_definition_name = "App Configuration Data Owner"
  principal_id         = data.azurerm_client_config.current.object_id
}

resource "azurerm_app_configuration_key" "config_item" {
  configuration_store_id = var.appconf_id
  key                    = var.config_item_map.0   //// START HERE <---- BROKEN

  depends_on = [
    azurerm_role_assignment.appconf_dataowner
  ]
}