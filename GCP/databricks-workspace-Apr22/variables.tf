variable "databricks_account_id" {
  description = "The Databricks account ID used for MWS APIs"
  type        = string
}

variable "databricks_google_service_account" {
  description = "The email address of the Google service account for Databricks workspace deployment"
  type        = string
}

variable "prefix" {
  description = "Prefix for workspace naming"
  type        = string
}

variable "google_project" {
  description = "Google Cloud project ID"
  type        = string
}

variable "google_region" {
  description = "Google Cloud region"
  type        = string
}

variable "network_name" {
  description = "Name of the VPC network"
  type        = string
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}

variable "router_name" {
  description = "Name of the router"
  type        = string
}

variable "workspace_name" {
  description = "Name of the Databricks workspace"
  type        = string
}
