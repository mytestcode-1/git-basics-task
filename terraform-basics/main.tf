resource "aws_s3_bucket" "terraform_bucket" {
  bucket = var.bucket_name

  tags = {
    "Owner Tag" = var.owner
    "Environment Tag" = var.environment
    "Project Tag" = var.project
  }
}

resource "aws_s3_bucket_versioning" "terraform_bucket_versioning" {
  bucket = var.bucket_name
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_instance" "terraform_instance" {
  ami           = "ami-01a00762f46d584a1"
  instance_type = "t3.micro"

  tags = {
    Name = var.instancename
  }
}

