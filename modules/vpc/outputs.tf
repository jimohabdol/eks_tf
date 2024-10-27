
output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "vpc_cidr" {
  value = aws_vpc.main.cidr_block
}

output "private_subnet_arns" {
  value = [for subnet in aws_subnet.private : subnet.arn]
}

output "public_subnet_arns" {
  value = [for subnet in aws_subnet.public : subnet.arn]
}

output "private_subnet_ids" {
  value = [for subnet in aws_subnet.private : subnet.id]
}

output "public_subnet_ids" {
  value = [for subnet in aws_subnet.public : subnet.id]
}

output "availability_zone" {
  value = data.aws_availability_zones.available.names
}