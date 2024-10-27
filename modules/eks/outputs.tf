output "eks_cluster_name" {
  value = aws_eks_cluster.this.name
}

output "eks_cluster_arn" {
  value = aws_eks_cluster.this.arn
}

output "eks_cluster_endpoint" {
  value = aws_eks_cluster.this.endpoint
}

output "node_group_arn" {
  value = aws_eks_node_group.this.arn
}

output "cluster_ca_certificate" {
  value = aws_eks_cluster.this.certificate_authority
}

