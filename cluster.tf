resource "google_container_cluster" "app_cluster" {
  name = "app-cluster"
  location = var.region
}

provider "kubernetes" {
    host = "https://${data.google_container_cluster.app_cluster.endpoint}"
    token = data.google_client_config.provider.access_token
    cluster_ca_certificate = base64decode(
        data.google_container_cluster.app_cluster.master_auth[0].cluster_ca_certificate,
    )
}