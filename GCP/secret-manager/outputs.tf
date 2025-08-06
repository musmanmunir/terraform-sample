output "secret_name" {
  description = "The name of the created secret."
  value       = module.secret-manager.secret_names
}
