
resource "aws_vpc" "task2_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
      Name= var.vpc_tag
  }

}



