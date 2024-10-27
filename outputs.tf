output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = module.eks.eks_cluster_endpoint
}

output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = module.eks.eks_cluster_name
}

