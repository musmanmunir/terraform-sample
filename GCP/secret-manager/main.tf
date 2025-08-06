module "secret-manager" {
  source  = "GoogleCloudPlatform/secret-manager/google"
  version = "~> 0.7"

  project_id = var.project_id
  secrets    = var.secrets
}
