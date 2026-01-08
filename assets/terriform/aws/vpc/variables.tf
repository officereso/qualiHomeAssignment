variable "region" {
	default = "us-east-2"
	type = string
}

variable "cidr_block" {
	default = "10.0.0.0/16"
	type = string
}

variable "name" {
	default = null
	type = string
}