variable "vpc_name" {
  description = "VPC name"
  default     = "default"
}

variable "vpc_desc" {
  description = "Information of this VPC"
  default     = ""
}

variable "automode" {
  description = "If you want to create vpc and subnets using automode"
  default     = "false"
}

variable "regions" {
  description = "A list of regions"
  type        = "list"
  default     = []
}

variable "public_subnets" {
  description = "A list of public subnets. The number of subnets must be same with count of regions"
  type        = "list"
  default     = []
}

variable "private_subnets" {
  description = "A list of private subnets. The number of subnets must be same with count of regions"
  type        = "list"
  default     = []
}
