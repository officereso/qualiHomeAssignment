output "vpc_id" {
	value = aws_vpc.vpc.id
}
output "route_table_id" {
	value = aws_route_table.public.id
}

output "subnet_id" {
	value = aws_subnet.subnet.id
}