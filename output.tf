output "rg_name" {
  value = azurerm_resource_group.rg.name
}

output "rg_location" {
  value = azurerm_resource_group.rg.location
}


output "app_plan_name" {
  description = "Name of the App Service Plan"
  value       = azurerm_app_service_plan.plan.name
}

output "app_plan_kind" {
  description = "Kind of the App Service Plan"
  value       = azurerm_app_service_plan.plan.kind
}

output "app_plan_sku" {
  description = "Tier of the App Service Plan"
  value       = azurerm_app_service_plan.plan.sku[0]
}

output "app_id" {
  description = "The ID of the App Service"
  value       = azurerm_app_service.app.id
}

output "app_name" {
  description = "The name of the App Service"
  value       = azurerm_app_service.app.name
}

output "app_url" {
  description = "The default hostname for the App Service"
  value       = azurerm_app_service.app.default_site_hostname
}

output "outbound_ips" {
  description = "A list of outbound IP addresses for the App Service"
  value       = split(",", azurerm_app_service.app.outbound_ip_addresses)
}

output "possible_outbound_ips" {
  description = "A list of possible outbound IP addresses for the App Service. Superset of outbound_ips"
  value       = split(",", azurerm_app_service.app.possible_outbound_ip_addresses)
}
