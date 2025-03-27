module "ec2" {
    source = "/modules/ec2"
    # Add any required variables here
    instance_type = "t2.micro"
    ami_id        = "ami-12345678"
    # Add other necessary inputs
}

