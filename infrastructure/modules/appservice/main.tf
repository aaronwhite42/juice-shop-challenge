
#------------------------------------------------------------------------
# Module: appservice
#
# Creates an app service with an associated service plan
# using the 'bkimminich/juice-shop' container image
#------------------------------------------------------------------------

resource "azurerm_service_plan" "juice_shop_asp" {
  name                = "${var.team_name}-juice-shop-asp"
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  os_type             = "Linux"
  sku_name            = "B1"
}


resource "azurerm_linux_web_app" "juice_shop_webapp" {
  name                = "${var.team_name}juiceshop"
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  service_plan_id     = azurerm_service_plan.juice_shop_asp.id
  https_only          = true

  site_config {
    application_stack {
      docker_image     = "bkimminich/juice-shop"
      docker_image_tag = "latest"
    }
  }
}
