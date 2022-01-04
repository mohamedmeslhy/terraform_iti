
# variable "sub_public1_cidr" {
    
#     type = list
# }

variable "id_vpc" {

  
}

variable "private_subnet" {
  type = list
  default = ["10.0.4.0/24", "10.0.3.0/24", "10.0.2.0/24", "10.0.1.0/24"]
}
