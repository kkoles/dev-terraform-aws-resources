output "vpc_id" {
  value = aws_vpc.app_vpc.id
}

output "db_subnet_group" {
  value = aws_db_subnet_group.app_rds_subnetgroup.*.name
}

output "db_security_group" {
  value = [aws_security_group.app_sg["rds"].id]
}

output "public_sg" {
  value = aws_security_group.app_sg["public"].id
}

output "public_subnets" {
  value = aws_subnet.app_public_subnet.*.id
}