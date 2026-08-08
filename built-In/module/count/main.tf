resource "aws_s3_bucket" "name" {
  count = length(var.bucket_names)
  bucket = "bucket-${var.bucket_names[count.index]}"
}

resource "aws_s3_bucket_versioning" "versioning" {
    count = length(var.bucket_names)
bucket = aws_s3_bucket.name[count.index].id

versioning_configuration {
    status = "Enabled"
  }
}