### frigga name
module "frigga" {
  source  = "Young-ook/spinnaker/aws//modules/frigga"
  version = "2.3.5"
  name    = var.name == null || var.name == "" ? "vpc" : var.name
  petname = true
}

locals {
  name = module.frigga.name
  default-tags = merge(
    { "terraform.io" = "managed" },
    { "Name" = local.name },
  )
}
