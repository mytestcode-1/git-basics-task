resource "aws_s3_bucket" "terraform_bucket" {
  bucket = var.bucket_name

  tags = {
    "Owner"       = var.owner
    "Environment" = var.Environment
    "Purpose"     = var.Purpose
  }
}

resource "aws_s3_bucket_versioning" "versioning_bucket" {
  bucket = var.bucket_name
  versioning_configuration {
    status = "Enabled"
  }
}