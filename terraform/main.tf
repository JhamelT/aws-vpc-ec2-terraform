module "vpc" {
 source             = "./modules/vpc"
 vpc_cidr           = "10.0.0.0/16"
 public_subnet_cidr = "10.0.1.0/24"
 az                 = "us-east-1a"
 project            = "vpc-ec2-demo"
}
module "sg" {
 source  = "./modules/security_group"
 vpc_id  = module.vpc.vpc_id
 my_ip   = "YOUR_IP/32"
 project = "vpc-ec2-demo"
}
module "ec2" {
 source         = "./modules/ec2"
 ami_id         = "AMI_ID_HERE"  # Use latest Amazon Linux 2 AMI
 instance_type  = "t3.micro"
 subnet_id      = module.vpc.public_subnet_id
 sg_id          = module.sg.sg_id
 project        = "vpc-ec2-demo"
}
