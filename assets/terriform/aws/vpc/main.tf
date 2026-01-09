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

resource "aws_vpc" "vpc" {
	cidr_block = var.cidr_block

	tags = {
		Name = var.name
	}
}
