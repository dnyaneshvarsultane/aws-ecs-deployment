terraform {
  backend "s3" {
    bucket         = "terraform-state-maintainer"
    key            = "/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-locks"
    encrypt        = true
  }
}
