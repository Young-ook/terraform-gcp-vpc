provider "google" {
  project = var.project
  region  = var.gcp_region
}

module "vpc" {
  source     = "../../"
  name       = var.name
  tags       = var.tags
  vpc_config = var.vpc_config
}
