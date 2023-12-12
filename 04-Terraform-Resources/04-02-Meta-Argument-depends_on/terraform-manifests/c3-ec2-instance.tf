# Resource-8: Create EC2 Instance

resource "aws_instance" "my-ec2-vm" {
  ami                    = "ami-0230bd60aa48260c6"
  instance_type          = "t2.micro"
  key_name               = "terraform-key"
  subnet_id              = aws_subnet.vpc-dev-public-subnet-1.id
  vpc_security_group_ids = [aws_security_group.dev-vpc-sg.id]
  user_data              = file("apache-install.sh")
}



