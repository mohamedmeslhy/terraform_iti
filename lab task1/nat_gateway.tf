resource "aws_eip" "elastic_IP" {
  vpc      = true
}

resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.elastic_IP.id 
  subnet_id     = aws_subnet.public_1.id 

  tags = {
    Name = "gw NAT"
  }
  depends_on = [aws_internet_gateway.internet_gw]
}