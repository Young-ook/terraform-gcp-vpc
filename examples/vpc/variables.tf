# Variables for providing to module fixture codes

variable "project" {
  description = "Project ID of Google Cloud Platform (GCP)"
  type        = string
  default     = ""
}

### network
variable "gcp_region" {
  description = "The gcp region to deploy"
  type        = string
  default     = "us-east-1"
}

variable "vpc_config" {
  description = "A Virtual Private Cloud (VPC) configuration"
  default     = {}
}

### description
variable "name" {
  description = "The logical name of the module instance"
  type        = string
  default     = null
}

### tags
variable "tags" {
  description = "The key-value maps for tagging"
  type        = map(string)
  default     = {}
}
