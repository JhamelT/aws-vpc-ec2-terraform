# Core Resources

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

resource "aws_route" "default_route" {
 route_table_id         = aws_route_table.public_rt.id
 destination_cidr_block = "0.0.0.0/0"
 gateway_id             = aws_internet_gateway.igw.id
}

resource "aws_route_table_association" "public_assoc" {
 subnet_id      = aws_subnet.public.id
 route_table_id = aws_route_table.public_rt.id
}


# Calling the module in root file
module "vpc1" {
 source             = "source = ../../modules/vpc1"
 vpc_cidr           = "10.0.0.0/16"
 public_subnet_cidr = "10.0.1.0/24"
 az                 = "us-east-1a"
 project            = "vpc-ec2-demo"
}

