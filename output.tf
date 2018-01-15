output "vpc_id" {
  description = "Identity of this VPC"
  value       = "${google_compute_network.vpc.self_link}"
}

output "vpc_name" {
  description = "Name of this VPC"
  value       = "${google_compute_network.vpc.name}"
}

output "vpc_gateway_ip4v" {
  description = "IP address of gateway for this VPC"
  value       = "${google_compute_network.vpc.gateway_ipv4}"
}

output "private_subnets_map" {
  description = "Map output of private subnets"
  value       = "${zipmap(var.regions, google_compute_subnetwork.private.*.self_link)}"
}

output "public_subnets_map" {
  description = "Map output of public subnets"
  value       = "${zipmap(var.regions, google_compute_subnetwork.public.*.self_link)}"
}
