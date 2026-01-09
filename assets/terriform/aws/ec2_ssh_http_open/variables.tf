variable "region" {
	description = "AWS Region to create resource."
	default = "us-east-2"
	type = string
	nullable = false
}

variable "ami" {
	description = "AMI to launch with. Choose one from the Amazon AMI catalog."
	type = string
	nullable = false
}

variable "instance_type" {
	description = "A compatible instance type for this AMI."
	default = "t2.micro"
	type = string
	nullable = false
}

variable "name" {
	description = "Name of this resource in AWS."
	default = null
	type = string
	nullable = true
}

variable "subnet_id" {
	description = "Subnet to associate this EC2 instance in."
	type = string
	nullable = false
}

variable "private_ips" {
	description = "Set of private IP's to give this EC2 resource. IP's listed must reside within the CIDR of the associated subnet_id."
	type = set(string)
	nullable = false
}

variable "vpc_id" {
	description = "ID of the VPC to associate this EC2 resource with."
	default = false
	type = string
	nullable = false
}

variable "key_name" {
	description = "Name identifying Key Pair to SSH into instance with."
	type = string
	nullable = false
}