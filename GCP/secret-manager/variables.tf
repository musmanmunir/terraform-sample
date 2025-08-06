variable "project_id" {
  description = "The ID of the GCP project where the secret should be created."
  type        = string
}

variable "secrets" {
  description = "A list of secret objects to be created in Secret Manager."
  type = list(object({
    name               = string
    create_version     = bool
    secret_data        = string
  }))
}
