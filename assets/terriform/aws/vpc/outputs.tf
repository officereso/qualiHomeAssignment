output "vpc" {
	value = aws_vpc.vpc
}

output "vpc_id" {
	value = aws_vpc.vpc.id
}

output "vpc_arn" {
	value = aws_vpc.vpc.arn
}

output "route_table_id" {
	value = aws_route_table.public.id
}