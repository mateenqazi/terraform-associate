# Create EC2 Instance
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance


resource "aws_instance" "my-ec2-terraform" {
  ami               = "ami-0230bd60aa48260c6"
  instance_type     = "t2.micro"
  availability_zone = "us-east-1b"
  tags = {
    "Name" = "web"
    "tag1" = "update-test-1"
  }
}