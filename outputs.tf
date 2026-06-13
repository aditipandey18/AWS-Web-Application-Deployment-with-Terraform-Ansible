output "vpc_id" {
  description = "Created VPC ID."
  value       = aws_vpc.main.id
}

output "web_public_ip" {
  description = "Public IP address of the EC2 web server."
  value       = aws_instance.web.public_ip
}

output "web_url" {
  description = "HTTP URL for the web application."
  value       = "http://${aws_instance.web.public_dns}"
}

output "rds_endpoint" {
  description = "Private RDS endpoint."
  value       = aws_db_instance.postgres.address
}

output "static_assets_bucket" {
  description = "S3 bucket storing static assets."
  value       = aws_s3_bucket.static_assets.bucket
}

output "ansible_inventory" {
  description = "Generated Ansible inventory path."
  value       = local_file.ansible_inventory.filename
}
