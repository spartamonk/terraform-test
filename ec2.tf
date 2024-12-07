# resource "aws_instance" "web2" {
#   ami           = "ami-0453ec754f44f9a4a"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "HelloWorld"
#   }
# }


# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  assume_role {
    role_arn = "arn:aws:iam::058264383077:role/adminn"
  }
  default_tags {
        tags = {
           Terraform = "True"
        }
  
  }
}