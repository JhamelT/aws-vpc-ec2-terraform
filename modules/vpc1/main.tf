resource "aws_vpc" "main"  {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    name = "${var.project}-vpc"
  }
}

resource "aws_internet_gateway" "igw"  {
  vpc_id = aws_vpc.main.id
  tags = {
    name = "${var.project}-igw"
  }
}
resource "aws_subnet" "public" {
  vpc_id         = aws_vpc.main.id
  cidr_block     = var.public_subnet_cidr
  map_public_ip_on_launch  = true
  availability_zone        =var.az
  tags ={  
      name = "${var.project}-public-subnet"
      }
}

resource "aws_route_table" "public_rt" {
    vpc_id = aws.vpc.main.id
    tags = {
      name = "{var.project}-public-rt"
    }
}

variable "az" {
  description = "Availability zone for subnet"
  type        = string
}

variable "project" {
  description = "Project name for tagging"
  type        = string
}
