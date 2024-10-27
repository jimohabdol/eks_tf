
variable "region" {
  description = "The AWS region for deployment"
  type        = string
}

##########################
#           vpc          #
##########################
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "az_count" {
  description = "number of AZs to use for the VPC"
  type        = number
}

variable "subnet_ids" {

}

variable "vpc_id" {

}

##########################
#           eks          #
##########################

variable "eks_version" {

}

variable "authentication_mode" {

}

variable "cluster_autoscaler_version" {
  type = string
}

variable "eks_addon_version" {
  type = string
}

variable "capacity_type" {
  type = string
}

variable "instance_types" {
  type = list(string)
}

variable "scaling_desired_size" {
  type = number
}

variable "scaling_max_size" {
  type = number
}

variable "scaling_min_size" {
  type = number
}

variable "lbc_version" {
  type = string
}