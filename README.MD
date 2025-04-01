** AWS VPC + EC2 Deployment via Terraform

OVERVIEW

This project demonstrates the deployment of a custom VPC with public subnetting, an EC2 instance running Nginx, and proper networking configuration using Terraform Infrastructure as Code (IaC). The infrastructure is managed with remote state via HashiCorp Cloud Platform (HCP) Terraform for safety and scalability.

Key Features

- Modular Infrastructure Design: Reusable, modular code for VPC, Security Groups, and EC2 instance deployment, promoting maintainability and consistency.

- Remote State Management: Infrastructure state managed through HCP Terraform for collaboration, versioning, and disaster recovery.
- Networking Architecture: Complete AWS networking stack including VPC, public subnet, Internet Gateway, route tables, and security groups.
- Automated Deployment: EC2 provisioning includes user data script to automatically install and configure Nginx web server.
- Security Implementation: Defense-in-depth approach with:
  - SSH access restricted to authorized IP addresses
  - HTTP open to the internet for web server accessibility
  - Properly configured security groups following least privilege principles



Technical Highlights
- Infrastructure defined entirely as code, enabling consistent deployments and version control
Separation of concerns through modular design, enhancing maintainability and reusability
Automated resource provisioning, eliminating manual configuration errors
Built-in scalability through parameterized modules and infrastructure as code practices
