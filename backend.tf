terraform {
  backend "s3" {
    bucket         = "terraform-state-maintainer"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
  }
}
