resource "aws_security_group" "web_sg" {
 name        = "${var.project}-web-sg"
 description = "Allow SSH and HTTP traffic"
 vpc_id      = var.vpc_id
 ingress {
   description = "SSH from my IP"
   from_port   = 22
   to_port     = 22
   protocol    = "tcp"
   cidr_blocks = [var.my_ip]
 }
 ingress {
   description = "HTTP from all"
   from_port   = 80
   to_port     = 80
   protocol    = "tcp"
   cidr_blocks = ["0.0.0.0/0"]
 }
 egress {
   from_port   = 0
   to_port     = 0
   protocol    = "-1"
   cidr_blocks = ["0.0.0.0/0"]
 }
 tags = {
   Name = "${var.project}-sg"
 }
}
