resource "aws_instance" "instance" {
  for_each = var.instance_type

  ami = "AMI-id"
  instance_type = each.value
  key_name = "keypair"

  tags = {
    "Name" = each.key
  }
}