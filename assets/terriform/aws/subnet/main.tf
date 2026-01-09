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

resource "aws_subnet" "subnet" {
	vpc_id            = var.vpc_id
	cidr_block        = var.cidr_block

	tags = {
		Name = var.name
	}
}
