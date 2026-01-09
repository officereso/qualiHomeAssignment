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

resource "aws_s3_bucket" "bucket" {
	tags = {
		name = var.name
	}

	force_destroy = true
}
