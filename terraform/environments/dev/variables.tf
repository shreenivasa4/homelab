variable "project" {
  type        = string
  description = "Holds the project name where the resources will be deployed."
}

variable "environment" {
  type        = string
  description = "Holds the environment name where the resources will be deployed."
}

variable "region" {
  type        = string
  description = "Holds the region where the resources will be deployed."
}

variable "profile" {
  type        = string
  description = "Holds the profile to be used for authentication"
}

variable "vpc_cidr_block" {
  type        = string
  description = "Holds the CIDR block for the VPC."
}

variable "instance_tenancy" {
  type        = string
  description = "Holds the instance tenancy for the VPC."
}

variable "enable_dns_hostnames" {
  type        = bool
  description = "Holds the value for enabling DNS hostnames in the VPC."
}

variable "enable_dns_support" {
  type        = bool
  description = "Holds the value for enabling DNS support in the VPC."
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