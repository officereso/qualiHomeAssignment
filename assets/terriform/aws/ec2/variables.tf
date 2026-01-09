variable "region" {
	default = "us-east-2"
	type = string
	nullable = false
}

variable "ami" {
	type = string
	nullable = false
}

variable "instance_type" {
	default = "t2.micro"
	type = string
	nullable = false
}

variable "name" {
	default = null
	type = string
	nullable = true
}

variable "subnet_id" {
	type = string
	nullable = false
}

variable "private_ips" {
	type = set(string)
	nullable = false
}

variable "interface_name" {
	default = null
	type = string
	nullable = true
}

variable "vpc_id" {
	default = false
	type = string
	nullable = false
}