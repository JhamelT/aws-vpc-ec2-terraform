*//
#terraform {
  #backend"s3"
    #bucket         = "jha-terraform-stat"
    #key            = "vpc-ec2-deploy/terraform.tfstate"
    #region         = " us-east-1"
    #dynamodb_table = "terraform-locks"
  }
}
 *//
