#------------------------------------------------------------------------
# Juice Shop Challenge infrastructure
#------------------------------------------------------------------------

module "app_service" {
  source   = "./modules/appservice"
  for_each = var.teams

  team_name               = each.value
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
}
