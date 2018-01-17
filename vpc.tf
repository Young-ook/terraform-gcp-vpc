### VPC
resource "google_compute_network" "vpc" {
  name                    = "${var.vpc_name}"
  description             = "${var.vpc_desc}"
  project                 = "${var.project}"
  auto_create_subnetworks = "${var.automode}"
}
