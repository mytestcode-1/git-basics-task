output "s3-output-arn" {
    value = aws_s3_bucket.terraform_bucket.arn
}

output "s3-output-bucketname" {
  value = aws_s3_bucket.terraform_bucket.id
}