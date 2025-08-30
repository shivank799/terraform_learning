provider "aws" {
  region = "ap-south-1" # Set your desired AWS region (Mumbai)
}

resource "aws_instance" "example" {
  ami           = "ami-02d26659fd82cf299"   # Specify a valid AMI ID for ap-south-1
  instance_type = "t2.micro"                # Free tier eligible
  subnet_id     = "subnet-0c0b4f12cbe2c87bd" # Subnet where instance will launch
  key_name      = "awskey"                  # Your existing key pair name
}
