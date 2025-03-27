resource "aws_instance" "web" {
 ami                         = var.ami_id
 instance_type               = var.instance_type
 subnet_id                   = var.subnet_id
 vpc_security_group_ids      = [var.sg_id]
 associate_public_ip_address = true
 user_data = file("${path.module}/user_data.sh")
 tags = {
   Name = "${var.project}-ec2"
   owner = "J"
 }
}
