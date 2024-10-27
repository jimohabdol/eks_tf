
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "az_count" {
  description = "number of AZs to use for the VPC"
  type        = number
}
