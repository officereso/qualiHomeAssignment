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

resource "aws_security_group" "ssh" {
	description = "Allow SSH"
	vpc_id = var.vpc_id

	ingress {
		description = "SSH"
		from_port = 22
		to_port = 22
		protocol = "tcp"
		cidr_blocks = [ "0.0.0.0/0" ]
	}

	ingress {
		description = "http"
		from_port = 80
		to_port = 80
		protocol = "http"
		cidr_blocks = [ "0.0.0.0/0" ]
	}

	egress {
		from_port = 0
		to_port = 0
		protocol = "-1"
		cidr_blocks = [ "0.0.0.0/0" ]
	}
}

resource "aws_network_interface" "interface" {
	subnet_id = var.subnet_id
	private_ips = var.private_ips
	security_groups = [
		aws_security_group.ssh.id
	]

}

resource "aws_eip" "public_ip" {
	domain = "vpc"
}

resource "aws_eip_association" "eip_association" {
	allocation_id = aws_eip.public_ip.id
	network_interface_id = aws_network_interface.interface.id
}

resource "aws_instance" "instance" {
	ami = var.ami
	instance_type = var.instance_type
	key_name = var.key_name

	tags = {
		name = var.name
	}

	network_interface {
		device_index         = 0
		network_interface_id = aws_network_interface.interface.id
	}
}