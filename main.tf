provider "aws" {
  region = "us-east-2"  # ✅ Change region here
}

resource "aws_instance" "terraform-ec2" {
  ami           = "ami-0c55b159cbfafe1f0" # Use a valid AMI for your new region
  instance_type = "t3.micro"

  tags = {
    Name        = "terraform-ec2"   # ✅ Change or add more tags
    Environment = "Dev3"
    Owner       = "Suresh"
  }

  root_block_device {
    volume_size = 20               # ✅ Disk size in GB
    volume_type = "gp2"
  }
}