variable "eks_version" {
  type = string
}

variable "authentication_mode" {

}

variable "subnet_ids" {

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