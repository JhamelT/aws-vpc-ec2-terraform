# AWS VPC + EC2 Deployment using Terraform
## Overview
This project demonstrates the deployment of a custom VPC with public subnetting, an EC2 instance running Nginx, and proper networking configuration using Terraform Infrastructure as Code (IaC). The infrastructure is managed with remote state via HashiCorp Cloud Platform (HCP) Terraform, ensuring safety, scalability, and collaboration.
## Key Features
### Modular Infrastructure Design
- Reusable, modular Terraform code for VPC, Security Groups, and EC2 instance deployment.
- Promotes maintainability, reusability, and consistency across environments.
### Remote State Management
- Terraform state is managed through HCP Terraform, enabling versioning, disaster recovery, and team collaboration.
### Networking Architecture
Complete AWS networking stack, including:
- VPC
- Public Subnet
- Internet Gateway
- Route Tables
- Security Groups
### Automated Deployment
- EC2 provisioning includes a user data script that automatically installs and configures the Nginx web server.
### Security Implementation
A defense-in-depth approach is followed:
- SSH access restricted to authorized IP addresses.
- HTTP open to the internet for web server accessibility.
- Properly configured security groups using the principle of least privilege.
## Technical Highlights
- **Infrastructure as Code (IaC):** Ensures consistent deployments and version control by defining infrastructure as code.
- **Modular Design:** Improves maintainability and promotes separation of concerns.
- **Automated Provisioning:** Reduces manual configuration errors with Terraform automation.
- **Scalability:** Achieved using parameterized modules and IaC best practices.
## Usage
```bash
git clone <your-repo-url>
cd <project-directory>
# Initialize the Terraform working directory
terraform init
# Preview the changes to be applied
terraform plan
# Apply the configuration to provision infrastructure
terraform apply
```
## Outputs
- EC2 Public IP
- VPC ID
- Subnet ID
## Future Improvements
- Add Private Subnet and NAT Gateway
- Integrate Auto Scaling Group with CloudWatch alarms
- Use AWS Secrets Manager or Parameter Store for secure credential storage
- Add RDS instance for backend database support
## Diagram
*Add a visual diagram of your architecture here (e.g., using draw.io, Lucidchart, or an embedded image)*
## Author
Jha'Mel AWS Solutions Architect Certified, aspiring Cloud Engineer
