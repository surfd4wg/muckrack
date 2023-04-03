# core

variable "region" {
  description = "The AWS region to create resources in."
}

# networking

variable "public_subnet_1_cidr" {
  description = "CIDR Block for Public Subnet 1"
}
variable "public_subnet_2_cidr" {
  description = "CIDR Block for Public Subnet 2"
}
variable "private_subnet_1_cidr" {
  description = "CIDR Block for Private Subnet 1"
}
variable "private_subnet_2_cidr" {
  description = "CIDR Block for Private Subnet 2"
}
variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)
}

# load balancer

variable "health_check_path" {
  description = "Health check path for the default target group"
}

# logs

variable "log_retention_in_days" {
}

# key pair

variable "ssh_pubkey_file" {
  description = "Path to an SSH public key"
}

# ecs

variable "ecs_cluster_name" {
  description = "Name of the ECS cluster"
}
variable "amis" {
  description = "Which AMI to spawn."
}
variable "instance_type" {
  default = "t2.micro"
}
variable "docker_image_url_django" {
  description = "Docker image to run in the ECS cluster"
}
variable "app_count" {
  description = "Number of Docker containers to run"
}

# auto scaling

variable "autoscale_min" {
  description = "Minimum autoscale (number of EC2)"
}
variable "autoscale_max" {
  description = "Maximum autoscale (number of EC2)"
}
variable "autoscale_desired" {
  description = "Desired autoscale (number of EC2)"
}

# rds

variable "rds_db_name" {
  description = "RDS database name"
}
variable "rds_username" {
  description = "RDS database username"
}
variable "rds_password" {
  description = "RDS database password"
}
variable "rds_instance_class" {
  description = "RDS instance type"
}
variable "rds_port" {
  description = "RDS port number"
}

# domain

variable "certificate_arn" {
  description = "AWS Certificate Manager ARN for validated domain"
}

variable "docker_image_url_nginx" {
  description = "Docker image to run in the ECS cluster"
}

variable "allowed_hosts" {
  description = "Domain name for allowed hosts"
}

variable "hosted_zone_id" {
  description = "The hosted zone for the top level domain"
}

variable "top_level_domain" {
  description = "The top level domain for this site"
}