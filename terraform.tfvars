region = "eu-west-1"
vpc_cidr = "172.1.0.0/16"
az_count = 2
# vpc_id = ""
# subnet_ids = [
# ]
eks_version                = "1.30"
cluster_autoscaler_version = "9.37.0"
eks_addon_version          = "v1.3.2-eksbuild.2"
authentication_mode        = "API"
instance_types             = ["m5.xlarge"]
capacity_type              = "ON_DEMAND"
lbc_version                = "1.8.1"
scaling_desired_size       = 1
scaling_max_size           = 2
scaling_min_size           = 1