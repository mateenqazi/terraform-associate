# Input Variables


variable "aws_region" {
  description = "Region in which AWS resources to be created"
  type        = string
  default     = "us-east-1"
}

variable "aws_ami_id" {
  description = "AMI ID"
  type        = string
  default     = "ami-0759f51a90924c166"
}

variable "aws_instance_count" {
  description = "AWS instance Count"
  type        = number
  default     = 1
}