module "sc_module" {
  source = "./secuirty_groups"
  id_vpc = module.vpc_module.vpc_output

}