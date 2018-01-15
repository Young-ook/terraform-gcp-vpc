# VPC terraform module for Google Cloud Platform 

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
