output "alb_hostname" {
  value = aws_lb.production.dns_name
}
output "instance_id" {
  value       = join("", aws_db_instance.production.*.id)
  description = "ID of the instance"
}

output "instance_arn" {
  value       = join("", aws_db_instance.production.*.arn)
  description = "ARN of the instance"
}

output "instance_address" {
  value       = join("", aws_db_instance.production.*.address)
  description = "Address of the instance"
}

output "instance_endpoint" {
  value       = join("", aws_db_instance.production.*.endpoint)
  description = "DNS Endpoint of the instance"
}

output "resource_id" {
  value       = join("", aws_db_instance.production.*.resource_id)
  description = "The RDS Resource ID of this instance."
}