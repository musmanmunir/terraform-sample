resource "databricks_mws_networks" "databricks_network" {

  provider     = databricks.account
  account_id   = var.databricks_account_id
  network_name = data.google_compute_network.network.name

  vpc_id             = data.google_compute_network.network.self_link
  subnet_ids         = data.google_compute_subnetwork.subnet.self_link
  security_group_ids = []
}

resource "databricks_mws_workspaces" "databricks_workspace" {

  provider                = databricks.account
  account_id              = var.databricks_account_id
  workspace_name          = var.workspace_name
  location                = var.google_region
  is_no_public_ip_enabled = true
  network_id              = databricks_mws_networks.databricks_network.network_id

  cloud_resource_container {
    gcp {
      project_id = var.google_project
    }
  }
}
