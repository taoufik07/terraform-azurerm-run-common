###############################
# Global variables
###############################
variable "client_name" {
  description = "Client name"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "stack" {
  description = "Stack name"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group the resources will belong to"
  type        = string
}

variable "location" {
  description = "Azure location."
  type        = string
}

variable "location_short" {
  description = "Short string for Azure location."
  type        = string
}

variable "name_prefix" {
  description = "Name prefix for all resources generated name"
  type        = string
  default     = "fame"
}

variable "extra_tags" {
  description = "Extra tags to add"
  type        = map(string)
  default     = {}
}

variable "splunk_token" {
  description = "Access Token to send metrics to Splunk Observability"
  type        = string
}

variable "zip_package_path" {
  description = "Zip package path for monitoring function"
  type        = string
  default     = "https://github.com/claranet/fame/releases/download/v1.0.0/fame.zip"
}

variable "log_analytics_workspace_guid" {
  description = "GUID of the Log Analytics Workspace on which evaluate the queries"
  type        = string
}

variable "logs_destinations_ids" {
  description = "List of destination resources Ids for logs diagnostics destination. Can be Storage Account, Log Analytics Workspace and Event Hub. No more than one of each can be set. Empty list to disable logging."
  type        = list(string)
}

variable "logs_categories" {
  type        = list(string)
  description = "Log categories to send to destinations. All by default."
  default     = null
}

variable "logs_metrics_categories" {
  type        = list(string)
  description = "Metrics categories to send to destinations. All by default."
  default     = null
}

variable "logs_retention_days" {
  type        = number
  description = "Number of days to keep logs on storage account"
  default     = 30
}

variable "metrics_extra_dimensions" {
  description = "Extra dimensions sent with metrics"
  type        = map(string)
  default     = {}
}

variable "extra_application_settings" {
  description = "Extra application settings to set on monitoring function"
  type        = map(string)
  default     = {}
}

variable "storage_account_name" {
  description = "FAME Storage Account custom name. Empty by default, using naming convention."
  type        = string
  default     = null
}

variable "function_app_custom_name" {
  description = "FAME Function App custom name"
  type        = string
  default     = null
}

variable "application_insights_custom_name" {
  description = "FAME Application Insights custom name deployed with function app"
  type        = string
  default     = null
}

variable "storage_account_enable_advanced_threat_protection" {
  description = "FAME advanded thread protection (aka ATP) on Function App's storage account"
  type        = bool
  default     = false
}
