resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = {
      Name= "main"
  }
}

resource "aws_internet_gateway" "internet_gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "internet_gw"
  }
}