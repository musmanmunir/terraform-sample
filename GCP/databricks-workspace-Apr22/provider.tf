provider "databricks" {
  alias                  = "account"
  host                   = "https://accounts.gcp.databricks.com"
  account_id             = var.databricks_account_id
  google_service_account = var.databricks_google_service_account
}
