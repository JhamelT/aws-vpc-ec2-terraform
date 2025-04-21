output "ec2_public_ip" {
  value = aws_instance.web.public_ip
  description = "Public IP of the EC2 instance"
}
output "ec2_ssm_profile_name" {
 value = aws_iam_instance_profile.ec2_ssm_profile.name
}
