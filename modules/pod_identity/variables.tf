
variable "eks_cluster_name" {
  description = "eks cluster name"
  type        = string
}

variable "eks_addon_version" {
  description = "eks pod identity addon version"
  type        = string
  default     = "v1.2.0-eksbuild.1"
}
