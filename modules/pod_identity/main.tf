resource "aws_eks_addon" "pod_identity" {
  cluster_name  = var.eks_cluster_name
  addon_name    = "eks-pod-identity-agent"
  addon_version = var.eks_addon_version
}


