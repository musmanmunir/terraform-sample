output "databricks_workspace_url" {
  value = {
    workspace_url = databricks_mws_workspaces.databricks_workspace.workspace_url
  }
  sensitive = true
}
