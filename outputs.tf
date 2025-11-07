output "cluster_id" {
  description = "The ID of the LKE cluster"
  value       = linode_lke_cluster.demo.id
}

output "cluster_status" {
  description = "The status of the LKE cluster"
  value       = linode_lke_cluster.demo.status
}

output "api_endpoints" {
  description = "The Kubernetes API endpoints"
  value       = linode_lke_cluster.demo.api_endpoints
}

output "kubeconfig" {
  description = "Base64 encoded kubeconfig"
  value       = linode_lke_cluster.demo.kubeconfig
  sensitive   = true
}

output "dashboard_url" {
  description = "Kubernetes Dashboard URL"
  value       = linode_lke_cluster.demo.dashboard_url
}

output "pool_id" {
  description = "The ID of the node pool"
  value       = linode_lke_cluster.demo.pool[0].id
}

output "pool_nodes" {
  description = "Information about nodes in the pool"
  value       = linode_lke_cluster.demo.pool[0].nodes
}