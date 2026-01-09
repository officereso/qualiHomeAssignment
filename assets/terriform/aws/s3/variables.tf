variable "region" {
	default = "us-east-2"
	type = string
	nullable = false
}

variable "name" {
	default = null
	type = string
	nullable = true
}
