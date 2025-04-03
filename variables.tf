variable "db_password" {
  type        = string
  description = "Password for the MariaDB RDS instance"
  sensitive   = true
}

variable "ecr_repository_url" {
  type        = string
  description = "URL of the ECR repository for the Docker image"
}