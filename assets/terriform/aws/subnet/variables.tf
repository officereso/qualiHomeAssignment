variable "region" {
	default = "us-east-2"
	type = string
	nullable = false
}

variable "vpc_id" {
	type = string
	nullable = false
}

variable "cidr_block" {
	default = "10.0.0.0/24"
	type = string
	nullable = false
}

variable "name" {
	default = null
	type = string
	nullable = true
}