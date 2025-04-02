AWS VPC + EC2 Deployment via Terraform

OVERVIEW

- This project demonstrates the deployment of a custom VPC with public subnetting, an EC2 instance running Nginx, and proper networking configuration using Terraform Infrastructure as Code (IaC). The infrastructure is managed with remote state via HashiCorp Cloud Platform (HCP) Terraform, ensuring safety and scalability.

Key Features

- Modular Infrastructure Design: 
    *    Reusable, modular code for VPC, Security Groups, and EC2 instance deployment, promoting maintainability and consistency.

- Remote State Management: 
    *    Infrastructure state is managed through HCP Terraform for collaboration, versioning, and disaster recovery.
- Networking Architecture: 
    - Complete AWS networking stack, including:
       * VPC
       * Public Subnet
       * Internet Gateway
       * Route Tables
       * Security Groups


- Automated Deployment: 
      * EC2 provisioning includes user data script to automatically install and configure Nginx web server.
- Security Implementation: 
    - Defense-in-depth approach with:
      * SSH access restricted to authorized IP addresses
      * HTTP open to the internet for web server accessibility
      * Properly configured security groups following least privilege principles



Technical Highlights
Infrastructure as Code (IaC):
    Ensures consistent deployments and version control by defining infrastructure entirely as code.
Modular Design:
      * Promotes separation of concerns, improving maintainability and reusability.
Automated Provisioning:
      * Eliminates manual configuration errors through automated resource deployment.
Scalability:
      * Achieved via parameterized modules and IaC best practices.
