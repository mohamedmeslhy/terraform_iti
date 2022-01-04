
resource "aws_instance" "ec2" {
  count = lower(var.create_ec2 ? 1:0)
  ami           = var.ami_type
  instance_type = var.ec2_type_name
  subnet_id = var.id_subnet

  tags = {
    Name = upper("HelloWorld")
  }
}
