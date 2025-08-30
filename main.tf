provider "aws" {
  region = "ap-south-1" # Set your desired AWS region (Mumbai)
}

resource "aws_instance" "example" {
  ami           = var.ami_value                          # Specify a valid AMI ID for ap-south-1
  instance_type = var.instance_type_value                # Free tier eligible
  subnet_id     = var.subnet_id_value                    # Subnet where instance will launch
  key_name      = var.key_name_value                     # Your existing key pair name
}
