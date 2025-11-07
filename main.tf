resource "linode_lke_cluster" "demo" {
  label       = var.cluster_label
  k8s_version = var.k8s_version
  region      = var.region
  tags        = var.cluster_tags

  pool {
    type  = var.node_type
    count = var.node_count
  }
}
