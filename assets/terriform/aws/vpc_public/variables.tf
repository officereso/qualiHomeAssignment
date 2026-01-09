variable "region" {
	description = "AWS Region to create resource."
	default = "us-east-2"
	type = string
	nullable = false
}

variable "cidr_block" {
	description = "CIDR block for this VPC."
	default = "10.0.0.0/16"
	type = string
	nullable = false
}

variable "name" {
	description = "Name of this resource in AWS."
	default = null
	type = string
	nullable = true
}