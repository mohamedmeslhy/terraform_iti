module "ec2_instance" {
  source        = "./ec2"
  ami_type      = "ami-0ed9277fb7eb570c9"
  ec2_type_name = "t2.micro"
  id_subnet     = module.subnet_modul.sub_output

}

