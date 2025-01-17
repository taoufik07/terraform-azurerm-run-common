###############################
# Log Management outputs
###############################
output "logs_resource_group_name" {
  description = "Resource Group the logs resources belongs to"
  value       = var.resource_group_name
}

output "log_analytics_workspace_id" {
  description = "The Log Analytics Workspace ID."
  value       = azurerm_log_analytics_workspace.log_workspace.id
}

output "log_analytics_workspace_name" {
  description = "The Log Analytics Workspace name."
  value       = azurerm_log_analytics_workspace.log_workspace.name
}

output "log_analytics_workspace_guid" {
  description = "The Log Analytics Workspace GUID."
  value       = azurerm_log_analytics_workspace.log_workspace.workspace_id
}

output "log_analytics_workspace_primary_key" {
  description = "The Primary shared key for the Log Analytics Workspace."
  value       = azurerm_log_analytics_workspace.log_workspace.primary_shared_key
  sensitive   = true
}

output "log_analytics_workspace_secondary_key" {
  description = "The Secondary shared key for the Log Analytics Workspace."
  value       = azurerm_log_analytics_workspace.log_workspace.secondary_shared_key
  sensitive   = true
}

output "logs_storage_account_id" {
  description = "Id of the dedicated Storage Account"
  value       = module.storage_logs.storage_account_properties.id
}

output "logs_storage_account_name" {
  description = "Name of the logs Storage Account"
  value       = module.storage_logs.storage_account_properties.name
}

output "logs_storage_account_primary_connection_string" {
  description = "Primary connection string of the logs Storage Account, empty if connection string provided"
  value       = module.storage_logs.storage_account_properties.primary_connection_string
  sensitive   = true
}

output "logs_storage_account_primary_access_key" {
  description = "Primary connection string of the logs Storage Account, empty if connection string provided"
  value       = module.storage_logs.storage_account_properties.primary_access_key
  sensitive   = true
}

output "logs_storage_account_secondary_connection_string" {
  description = "Secondary connection string of the logs Storage Account, empty if connection string provided"
  value       = module.storage_logs.storage_account_properties.secondary_connection_string
  sensitive   = true
}

output "logs_storage_account_secondary_access_key" {
  description = "Secondary connection string of the logs Storage Account, empty if connection string provided"
  value       = module.storage_logs.storage_account_properties.secondary_access_key
  sensitive   = true
}

output "logs_storage_account_sas_token" {
  description = "SAS Token generated for logs access on Storage Account with full permissions on containers and objects for blob and table services."
  value       = module.log_sas_token.storage_account_sas_token
  sensitive   = true
}

output "logs_storage_account_appservices_container_name" {
  description = "Name of the container in which App Services logs are stored"
  value       = join("", azurerm_storage_container.container_webapps[*].name)
}

output "logs_storage_account_archived_logs_fileshare_name" {
  description = "Name of the file share in which externalized logs are stored"
  value       = join("", azurerm_storage_share.archivedlogs_fileshare[*].name)
}
