
module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  az_count = var.az_count

}

data "aws_eks_cluster_auth" "eks" {
  name       = module.eks.eks_cluster_name
  depends_on = [module.eks]
}

module "eks" {
  source               = "./modules/eks"
  eks_version          = var.eks_version
  authentication_mode  = var.authentication_mode
  subnet_ids           = module.vpc.private_subnet_ids
  instance_types       = var.instance_types
  capacity_type        = var.capacity_type
  scaling_desired_size = var.scaling_desired_size
  scaling_max_size     = var.scaling_max_size
  scaling_min_size     = var.scaling_min_size
}


provider "helm" {
  kubernetes {
    host                   = module.eks.eks_cluster_endpoint
    cluster_ca_certificate = base64decode(module.eks.cluster_ca_certificate[0].data)
    token                  = data.aws_eks_cluster_auth.eks.token
  }
}

module "aws_lbc" {
  source           = "./modules/aws_lbc"
  vpc_id           = module.vpc.vpc_id
  eks_cluster_name = module.eks.eks_cluster_name
  lbc_version      = var.lbc_version
  depends_on       = [module.autoscaler]
}

module "metrics_server" {
  source     = "./modules/metrics_server"
  depends_on = [module.eks]
}

module "pod_identity" {
  source            = "./modules/pod_identity"
  eks_addon_version = var.eks_addon_version
  eks_cluster_name  = module.eks.eks_cluster_name
}

module "autoscaler" {
  source                     = "./modules/autoscaler"
  cluster_autoscaler_version = var.cluster_autoscaler_version
  region                     = var.region
  eks_cluster_name           = module.eks.eks_cluster_name
  depends_on                 = [module.metrics_server]
}


module "iam" {
  source = "./modules/iam"
}