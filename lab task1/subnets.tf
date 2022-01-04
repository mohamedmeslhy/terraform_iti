resource "aws_subnet" "public_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.sub_public1_cidr
  availability_zone = "us-east-1a"


  tags = {
    Name = "public_1"
  }
}


########## route table
resource "aws_route_table" "vpc_route_table" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gw.id
  }


}

### association for public subnet & route table
resource "aws_route_table_association" "route_subnet_public1" {
  subnet_id      = aws_subnet.public_1.id 
  route_table_id = aws_route_table.vpc_route_table.id
}


resource "aws_subnet" "public_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.sub_public2_cidr
  availability_zone = "us-east-1b"


  tags = {
    Name = "public_2"
  }
}

### association for public2 subnet & route table
 resource "aws_route_table_association" "route_subnet_public2" {
  subnet_id      = aws_subnet.public_2.id 
  route_table_id = aws_route_table.vpc_route_table.id
}

resource "aws_subnet" "private_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.sub_private1_cidr
  availability_zone = "us-east-1a"


  tags = {
    Name = "private_1"
  }

  
}
#### route table private 1&2
resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat_gw.id
   
  }

}

### association for private1 subnet & route table
 resource "aws_route_table_association" "route_subnet_private1" {
  subnet_id      = aws_subnet.private_1.id 
  route_table_id = aws_route_table.private_route_table.id
}


resource "aws_subnet" "private_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.sub_private2_cidr
  availability_zone = "us-east-1a"


  tags = {
    Name = "private_2"
  }
}

### association for private2 subnet & route table
 resource "aws_route_table_association" "route_subnet_private2" {
  subnet_id      = aws_subnet.private_2.id 
  route_table_id = aws_route_table.private_route_table.id
}

resource "aws_subnet" "private_3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.sub_private3_cidr
  availability_zone = "us-east-1b"


  tags = {
    Name = "private_3"
  }
}

#### route table private3&4 with no internet
resource "aws_route_table" "no_internet_private_route_table" {
  vpc_id = aws_vpc.main.id
}

### association for private3 subnet & route table
 resource "aws_route_table_association" "route_subnet_private3" {
  subnet_id      = aws_subnet.private_3.id 
  route_table_id = aws_route_table.no_internet_private_route_table.id
}

resource "aws_subnet" "private_4" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.sub_private4_cidr
  availability_zone = "us-east-1b"


  tags = {
    Name = "private_4"
  }
}
### association for private4 subnet & route table
 resource "aws_route_table_association" "route_subnet_private4" {
  subnet_id      = aws_subnet.private_4.id 
  route_table_id = aws_route_table.no_internet_private_route_table.id
}