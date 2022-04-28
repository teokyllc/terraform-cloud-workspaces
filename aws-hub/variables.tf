variable "tags" {
  type        = map
  description = "The regions to create IPAM in."
}

variable "ipam_regions" {
  type        = list
  description = "The regions to create IPAM in."
}

variable "ipam_description" {
  type        = string
  default     = ""
  description = "A description for the IPAM."
}

variable "us_east_1_cidrs" {
  type        = list
  description = "The regions to create IPAM in."
}

variable "us_east_2_cidrs" {
  type        = list
  description = "The regions to create IPAM in."
}