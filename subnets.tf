locals {
  private_subnets_count = length(var.private_subnets)
  public_subnets_count  = length(var.public_subnets)
  regions_count         = length(var.regions)
}

### private subnets
resource "google_compute_subnetwork" "private" {
  count         = local.private_subnets_count != local.regions_count ? 0 : local.regions_count
  name          = format("%s-private-%s", var.name, element(var.regions, count.index))
  network       = google_compute_network.vpc.self_link
  region        = element(var.regions, count.index)
  ip_cidr_range = element(var.private_subnets, count.index)
}

### public subnets
resource "google_compute_subnetwork" "public" {
  count         = local.public_subnets_count != local.regions_count ? 0 : local.regions_count
  name          = format("%s-public-%s", var.name, element(var.regions, count.index))
  network       = google_compute_network.vpc.self_link
  region        = element(var.regions, count.index)
  ip_cidr_range = element(var.public_subnets, count.index)
}
