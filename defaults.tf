### default values

locals {
  default_vpc_config = {
    # Indicate to create vpc and subnets using automode. When set to true, the network is created in "auto subnet mode"
    # and it will create a subnet for each region automatically across the 10.128.0.0/9 address range. When set to false,
    # the network is created in "custom subnet mode" so the user can explicitly connect subnetwork resources.
    automode = true

    cidr        = "10.0.0.0/16"
    regions     = ["us-central1"]
    subnet_type = "private" # allowed values : "isolated" | "public" | "private"
  }
}
