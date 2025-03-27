module "vpc1" {
 source             = "/modules/vpc1" #repo-root relative
 vpc_cidr           = "10.0.0.0/16"
 public_subnet_cidr = "10.0.1.0/24"
 az                 = "us-east-1a"
 project            = "vpc-ec2-demo"
}
module "security_group1" {
 source  = "/modules/security_group1"
 vpc_id  = module.vpc.vpc_id
 my_ip   = "98.81.156.246" # update ip address if necessary
 project = "vpc-ec2-demo"
}
module "ec2" {
 source         = "/modules/ec2"
 ami_id         = "ami-01f5a0b78d6089704"  # Use latest Amazon Linux 2 AMI - update ami if necessary
 instance_type  = "t3.micro"
 subnet_id      = module.vpc.public_subnet_id
 sg_id          = module.sg.sg_id
 project        = "vpc-ec2-demo"
variable "ami_id" {
 description = "AMI ID for EC2 instance"
 type        = string
}
variable "instance_type" {
 description = "EC2 instance type"
 type        = string
}
variable "subnet_id" {
 description = "Public subnet ID"
 type        = string
}
variable "sg_id" {
 description = "Security group ID"
 type        = string
}
variable "project" {
 description = "Project tag"
 type        = string
}
}
