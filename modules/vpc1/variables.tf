# Inputs
varibale "vpc_cidr" {
    description = "CIDR block for VPC"
    type        = string
}
variable "public_subnet_cidr" {
  description    = "CIDR block for the public subnet"
  type           = string
}

variable "az" {
  description = "Availability zone for subnet"
  type        = string
}

variable "project" {
  description = "Project name for tagging"
  type        = string
}
  
