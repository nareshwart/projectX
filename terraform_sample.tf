# Sample Terraform configuration


# Configure the AWS provider
provider "aws" {
  region = "us-east-1"
}

# Create a Linux EC2 instance
resource "aws_instance" "linux_ec2" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI (example)
  instance_type = "t2.micro"

  tags = {
    Name = "LinuxEC2Instance"
  }
}

