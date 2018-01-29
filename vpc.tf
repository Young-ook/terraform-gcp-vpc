### VPC
resource "google_compute_network" "vpc" {
  name                    = "${var.name}"
  description             = "${var.desc}"
  project                 = "${var.project}"
  auto_create_subnetworks = "${var.automode}"
}
