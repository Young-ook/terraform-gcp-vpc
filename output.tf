output "id" {
  description = "Identity of this VPC"
  value       = "${google_compute_network.vpc.self_link}"
}

output "name" {
  description = "Name of this VPC"
  value       = "${google_compute_network.vpc.name}"
}

output "gateway_ip4v" {
  description = "IP address of gateway for this VPC"
  value       = "${google_compute_network.vpc.gateway_ipv4}"
}
