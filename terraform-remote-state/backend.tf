terraform {
  backend "s3" {
    bucket = "prasanna-terraform-state-001"
    key    = "main/statefile"
    region = "us-east-1"
 }
}
