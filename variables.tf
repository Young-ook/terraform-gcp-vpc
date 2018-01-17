variable "vpc_name" {
  description = "VPC name"
  type        = "string"
  default     = "default"
}

variable "vpc_desc" {
  description = "Information of this vpc"
  type        = "string"
  default     = ""
}

variable "project" {
  description = "Project ID of gcp (if it's not provided, porject is defined in provider will be used)"
  type        = "string"
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
