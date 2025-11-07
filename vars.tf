# variable "linode_token" {
#   description = "Linode API token"
#   type = string
#   sensitive = true
# }

variable "cluster_label" {
  description = "The label of the LKE cluster"
  type = string
  default = "demo-cluster"
}

variable "k8s_version" {
  description = "The Kubernetes version"
  type = string
  default = "1.34"
}

variable "cluster_tags" {
  description = "The tags of the LKE cluster"
  type = list(string)
  default = ["demo", "lke"]
}

variable "node_type" {
  description = "The type of the node"
  type = string
  default = "g6-standard-1" 
}

variable "node_count" {
  description = "The count of the nodes"
  type = number
  default = 3
}

variable "region" {
  description = "The region of the LKE cluster"
  type = string
  default = "gb-lon"
}