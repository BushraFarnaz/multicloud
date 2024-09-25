resource "aws_vpc" "main" {
    cidr_block = var.cidr
    tags =  {
        Name = var.vpc_name
    }
  
}

resource "aws_s3_bucket" "name" {
    bucket = var.bucket_name
  
}


resource "aws_instance" "name" {
    ami = var.ami
    instance_type = var.my-instance_type
    security_groups = [var.my-sg]
}