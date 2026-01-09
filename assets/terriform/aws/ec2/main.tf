terraform {
	required_providers {
		aws = {
			source  = "hashicorp/aws"
			version = "~> 6.0"
		}
	}
}

provider "aws" {
	region = var.region
}

resource "aws_network_interface" "interface" {
	subnet_id = var.subnet_id
	private_ips = var.private_ips

	tags = {
		Name = var.interface_name
	}
}

resource "aws_instance" "instance" {
	ami = var.ami
	instance_type = var.instance_type

	tags = {
		name = var.name
	}

	network_interface {
		device_index         = 0
		network_interface_id = aws_network_interface.interface.id
	}
}