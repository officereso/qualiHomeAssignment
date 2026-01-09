variable "region" {
	default = "us-east-2"
	type = string
}

variable "ami" {
	type = string
	nullable = false
}

variable "instance_type" {
	default = "t2.micro"
	type = string
}

variable "name" {
	default = null
	type = string
}

variable "subnet_id" {
	type = string
	nullable = false
}

variable "private_ips" {
	type = set(string)
}

variable "interface_name" {
	default = null
	type = string
}