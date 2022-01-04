module "vpc_module" {
  source   = "./vpc"
  vpc_cidr = "10.0.0.0/16"
  vpc_tag  = "vpc_main"
}