### input variables

### network
variable "vpc_config" {
  description = "A Virtual Private Cloud (VPC) configuration"
  default     = {}
}

variable "regions" {
  description = "A list of regions to deploy VPC"
  type        = list(string)
  default     = []
}

variable "public_subnets" {
  description = "A list of public subnets. The number of subnets must be same with count of regions"
  type        = list(string)
  default     = []
}

variable "private_subnets" {
  description = "A list of private subnets. The number of subnets must be same with count of regions"
  type        = list(string)
  default     = []
}

### description
variable "name" {
  description = "The logical name of the module instance"
  type        = string
  default     = null
}

variable "description" {
  description = "Description of the module instance"
  type        = string
  default     = ""
}

### tags
variable "tags" {
  description = "The key-value maps for tagging"
  type        = map(string)
  default     = {}
}
