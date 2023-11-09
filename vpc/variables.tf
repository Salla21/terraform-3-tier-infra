variable "vpc_cidr_block" {
  description = "The IPv4 CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet1_cidr_block" {
  description = "The IPv4 CIDR block for Public_subnet1"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet2_cidr_block" {
  description = "The IPv4 CIDR block for Public_subnet2"
  type        = string
  default     = "10.0.2.0/24"
}

variable "private_subnet1_cidr_block" {
  description = "The IPv4 CIDR block for Private_subnet1"
  type        = string
  default     = "10.0.3.0/24"
}

variable "private_subnet2_cidr_block" {
  description = "The IPv4 CIDR block for Private_subnet2"
  type        = string
  default     = "10.0.4.0/24"
}

variable "availability_zones" {
  description = "The availability zones"
  type        = list(string)
  default     = ["eu-central-1a", "eu-central-1b"]
}


variable "tags" {
  type = map
  description = "tags"
}