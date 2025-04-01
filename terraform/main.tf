module "vpc1" {
  source             = "../modules/vpc1"
  vpc_cidr           = "10.0.0.0/16"
  public_subnet_cidr = "10.0.1.0/24"
  az                 = "us-east-1a"
  project            = var.project  # Use the variable
}

module "security_group1" {
  source  = "../modules/security_group1"
  vpc_id  = module.vpc1.vpc_id
  my_ip   = "98.84.152.240"
  project = "vpc-ec2-demo"
}

module "ec2" {
  source         = "../modules/ec2"
  ami_id         = "ami-071226ecf16aa7d96"
  instance_type  = var.instance_type  # Use the variable
  subnet_id      = module.vpc1.public_subnet_id
  sg_id          = module.security_group1.sg_id
  project        = var.project  # Use the variable
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"  # Add default value
}

variable "subnet_id" {
  description = "Public subnet ID"
  type        = string
  default     = ""  # Add default or remove if not needed
}

variable "sg_id" {
  description = "Security group ID"
  type        = string
  default     = ""  # Add default or remove if not needed
}

variable "project" {
  description = "Project tag"
  type        = string
  default     = "vpc-ec2-demo"  # Add default value
}


provider "aws" {
  region = "us-east-1"  # Use the region that matches where your resources should be deployed
}
