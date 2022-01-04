module "subnet_modul" {
  source         = "./subnets"
  private_subnet = ["10.0.4.0/24", "10.0.3.0/24", "10.0.2.0/24", "10.0.1.0/24"]
  id_vpc         = module.vpc_module.vpc_output

}