module "ec2" {
    source = "/modules/ec2"
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
    instance_type = "t2.micro"
    ami_id        = "ami-12345678"
    # Add other necessary inputs
}

