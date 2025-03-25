AWS VPC + EC2 Deployment via Terraform

* OVERVIEW
This project demonstrates the deployment of a custom VPC with public subnetting, an EC2 instance running Nginx, and proper networking configuration using Terraform Infrastructure as Code (IaC). The infrastructure is managed with remote state via S3 and DynamoDB for safety and scalability.

* Key Features
Terraform Modules: Reusable, modular code for VPC, Security Groups, and EC2 instance deployment.
• Remote State Management: Terraform backend configured with S3 (state) and DynamoDB (locking) for collaboration and safety.
• Networking Fundamentals: VPC, public subnet, Internet Gateway, route tables, and security groups implemented.
• Automation: EC2 provisioning includes user data script to automatically install and serve Nginx.
• Security Best Practices:
• SSH access restricted to my IP only.
• HTTP open to the internet (for web server visibility).
