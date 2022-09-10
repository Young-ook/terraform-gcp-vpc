output "vpc" {
  value = {
    id             = module.vpc.id
    name           = module.vpc.name
    private_subnet = module.vpc.private_subnets_map
    public_subnet  = module.vpc.public_subnets_map
  }
}
