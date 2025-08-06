terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 6.0"
    }
    databricks = {
      source  = "databricks/databricks"
      version = "~> 1.6.0"
    }
  }
  required_version = ">= 1.6.3"

  backend "gcs" {
    prefix = "gcp-cloud-data/databricks-workspace"
  }
}
