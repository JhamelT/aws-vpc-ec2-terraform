variable "vpc_id" {
 description = "VPC ID for the security group"
 type        = string
}
variable "my_ip" {
 description = "Your public IP with /32 CIDR"
 type        = string
}
variable "project" {
 description = "Project tag for resources"
 type        = string
}
