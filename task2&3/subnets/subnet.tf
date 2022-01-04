# resource "aws_subnet" "public_1" {
#   vpc_id = var.id_vpc      
#   cidr_block = var.sub_public1_cidr

#   tags = {
#     Name = "public_1"

# }
# }


resource "aws_subnet" "public_1" {
  count                   = length(var.private_subnet)
  vpc_id                  = var.id_vpc  
  cidr_block              = var.private_subnet[count.index]

    tags = {
    Name = "public_1"

}
}

