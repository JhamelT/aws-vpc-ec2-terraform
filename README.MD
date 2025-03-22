# AWS VPC + EC2 + Terraform
* Purpose
The goal is this project is to deploy a custom VPC with public/private subnets, spin up an EC2 instance in the public subnet, and host a static website. 
Managing everything via modular Terraform, with remote state stored in S3.
#Module 1
-- Step 1
Designed my Repo / folder structure
//
aws-vpc-ec2-terraform/
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── backend.tf
├── modules/
│   ├── vpc/
│   ├── ec2/
│   └── security_group/
├── diagrams/
└── README.md
//
-- Step 2
Setting up Terraform Backend (Remote State )
* Create S3 bucket for state file
- jha-terraform-state : enable versioning
* Create DynamoDBtable - for state locking
- terraform-locks
- LockID(string)
terraform {
 backend "s3" {
   bucket         = "tayo-terraform-state"
   key            = "vpc-ec2-deploy/terraform.tfstate"
   region         = "us-east-1"
   dynamodb_table = "terraform-locks"
 }
}
# Module 3
- Build Terraform modules
* Module 1: VPC
- Create 




