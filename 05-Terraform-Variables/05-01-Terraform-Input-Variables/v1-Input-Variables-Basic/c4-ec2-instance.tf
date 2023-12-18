# Create EC2 Instance
resource "aws_instance" "my-ec2-vm" {
  ami           = var.aws_ami_id
  instance_type = "t3.micro"
  key_name      = "terraform-key"
  count         = var.aws_instance_count
  user_data     = <<-EOF
  #! /bin/bash
    sudo yum update -y
    sudo yum install -y httpd
    sudo service httpd start  
    sudo systemctl enable httpd
    #echo "<h1>Welcome to StackSimplify ! AWS Infra created using Terraform in us-east-1 Region</h1>" | sudo tee /var/www/html/index.html
    echo "<h1>Welcome to StackSimplify ! AWS Infra created using Terraform in us-east-1 Region</h1>" > /var/www/html/index.html
  EOF

  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id] 
  tags = {
    "Name" = "myec2vm"
  }
}



