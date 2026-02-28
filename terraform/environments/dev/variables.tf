variable "region" {
  type        = string
  description = "Holds the region where the resources will be deployed."
  default     = "us-east-1"
}

variable "profile" {
  type        = string
  description = "Holds the profile to be used for authentication"
  default     = "default"
}