# Google Cloud VPC
A [Virtual Private Cloud (VPC)](https://cloud.google.com/vpc/docs/vpc) network is a virtual version of a physical network, implemented inside of Google's production network, using [Andromeda](https://www.usenix.org/system/files/conference/nsdi18/nsdi18-dalton.pdf). A VPC network provides the following:

- Provides connectivity for your Compute Engine virtual machine (VM) instances, including Google Kubernetes Engine (GKE) clusters, App Engine flexible environment instances, and other Google Cloud products built on Compute Engine VMs.
- Offers native Internal TCP/UDP Load Balancing and proxy systems for Internal HTTP(S) Load Balancing.
- Connects to on-premises networks using Cloud VPN tunnels and Cloud Interconnect attachments.
- Distributes traffic from Google Cloud external load balancers to backends.

Projects can contain multiple VPC networks. Unless you create an organizational policy that prohibits it, new projects start with a default network (an auto mode VPC network) that has one subnetwork (subnet) in each region.

## Example

main.tf
```
terraform {
  required_version = ">= 0.11"
}

provider "google" {
  region      = "us-central1"
  project     = "${var.your_proj}"
  credentials = "${file("key.json")}"
}

module "vpc" {
  source          = "${var.module_url}"
  vpc_name        = "test_vpc_gcp"
  regions         = "${var.regions}"
  private_subnets = "${var.private_subnets}"
  public_subnets  = "${var.public_subnets}"
}
```

variables.tf
```
variable "regions" {
  default = ["us-central1", "asia-south1"]
}

variable "public_subnets" {
  default = ["10.255.123.0/24", "10.255.124.0/24"]
}

variable "private_subnets" {
  default = ["10.255.233.0/24", "10.255.243.0/24"]
}
```
