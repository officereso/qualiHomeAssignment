output "instance" {
	value = aws_instance.instance
}

output "public_ip" {
	value = aws_instance.instance.public_ip
}

output "public_ssh_key" {
	value = tls_private_key.private_key.public_key_pem
	sensitive = true
}

output "private_ssh_key" {
	value = tls_private_key.private_key.private_key_pem
	sensitive = true
}
