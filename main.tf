provider "aws" {
  region = "us-east-2"  # ✅ Change region here
}

resource "aws_instance" "my_vm" {
  ami           = "ami-0c55b159cbfafe1f0" # Use a valid AMI for your new region
  instance_type = "t2.micro"

  tags = {
    Name        = "MyEc2instance"   # ✅ Change or add more tags
    Environment = "Dev"
    Owner       = "Suresh"
  }

  root_block_device {
    volume_size = 20               # ✅ Disk size in GB
    volume_type = "gp2"
  }
}