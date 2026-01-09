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

resource "tls_private_key" "private_key" {
	algorithm = "RSA"
	rsa_bits = 4096
}

resource "aws_key_pair" "key_pair" {
	public_key = tls_private_key.private_key.public_key_openssh
}

resource "aws_instance" "instance" {
	ami = var.ami
	instance_type = var.instance_type
	key_name = aws_key_pair.key_pair.key_name

	tags = {
		name = var.name
	}

	network_interface {
		device_index         = 0
		network_interface_id = aws_network_interface.interface.id
	}

	associate_public_ip_address = var.associate_public_ip_address
}