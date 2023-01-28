resource "aws_vpc" "myvpc-tf" {
    cidr_block = "10.10.0.0/16"
    tags = {
      "Name" = "Myvpcfrtf"
    }
  
}
resource "aws_subnet" "subnet1" {
    vpc_id = aws_vpc.myvpc-tf.id #implicit dependency 
    cidr_block = "10.10.0.0/24"
    availability_zone = "us-west-2a"
    tags = {
      "Name" = "subnet-1"
    }
}
resource "aws_subnet" "subnet2" {
    vpc_id = aws_vpc.myvpc-tf.id
    cidr_block = "10.10.1.0/24"
    availability_zone = "us-west-2b"
    tags = {
      "Name" = "subnet-2"
    }
}
resource "aws_subnet" "subnet3" {
    vpc_id = aws_vpc.myvpc-tf.id
    cidr_block = "10.10.2.0/24"
    availability_zone = "us-west-2c"
    tags = {
      "Name" = "subnet-3"
    }
}
resource "aws_subnet" "subnet4" {
    vpc_id = aws_vpc.myvpc-tf.id
    cidr_block = "10.10.3.0/24"
    availability_zone = "us-west-2a"
    tags = {
      "Name" = "subnet-4"
    }
}
resource "aws_subnet" "subnet5" {
    vpc_id = aws_vpc.myvpc-tf.id
    cidr_block = "10.10.4.0/24"
    availability_zone = "us-west-2b"
    tags = {
      "Name" = "subnet-5"
    }
}
resource "aws_subnet" "subnet6" {
    vpc_id = aws_vpc.myvpc-tf.id
    cidr_block = "10.10.5.0/24"
    availability_zone = "us-west-2c"
    tags = {
      "Name" = "subnet6"
    }
}
