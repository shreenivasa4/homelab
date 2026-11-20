variable "project" {
  type        = string
  description = "Holds the project name where the resources will be deployed."
  default     = "homelab"
}

variable "environment" {
  type        = string
  description = "Holds the environment name where the resources will be deployed."
  default     = "dev"
}

variable "region" {
  type        = string
  description = "Holds the region where the resources will be deployed."
  default     = "us-east-1"
}

variable "vpc_cidr_block" {
  type        = string
  description = "Holds the CIDR block for the VPC."
  default     = "10.0.0.0/16"
}

variable "instance_tenancy" {
  type        = string
  description = "Holds the instance tenancy for the VPC."
  default     = "default"
}

variable "enable_dns_hostnames" {
  type        = bool
  description = "Holds the value for enabling DNS hostnames in the VPC."
  default     = true
}

variable "enable_dns_support" {
  type        = bool
  description = "Holds the value for enabling DNS support in the VPC."
  default     = true
}

variable "public_subnet_cidr_block" {
  type = map(object({
    cidr_block        = string
    availability_zone = string
  }))
  description = "Holds the CIDR block and availability zone for the public subnets."
}

variable "private_subnet_cidr_block" {
  type = map(object({
    cidr_block        = string
    availability_zone = string
  }))
  description = "Holds the CIDR block and availability zone for the private subnets."
}