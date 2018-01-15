### VPC
resource "google_compute_network" "vpc" {
  name                    = "${var.vpc_name}"
  description             = "${var.vpc_desc}"
  auto_create_subnetworks = "${var.automode}"
}
