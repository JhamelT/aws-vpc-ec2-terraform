# Export for EC2 Module

output "vpc_id"  {
  value = aws_vpc.main.id
}

output "public_subnet_id" {
  description = " The id of the public subnet"
  value = aws_subnet.public.id
}

