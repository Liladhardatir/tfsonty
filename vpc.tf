/*
resource "aws_vpc" "vpc" {
  cidr_block = "172.0.0.0/16"

  tags = {
    Name = "myvpc"
  }
}
#----------------------------------------------------------------
resource "aws_subnet" "subnet1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "172.0.0.0/24"
  availability_zone = "us-east-2a"

  tags = {
    Name = "su1"
  }
}
resource "aws_subnet" "subnet2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "172.0.0.0/24"
  availability_zone = "us-east-2a"

  tags = {
    Name = "su2"
  }
}
resource "aws_subnet" "subnet3" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "172.0.0.0/24"
  availability_zone = "us-east-2a"

  tags = {
    Name = "su3"
  }
}
#-------------------------------------------------------------------


resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "main"
  }
}
#-------------------------------------------------------------------
resource "aws_route_table" "rtable" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "172.0.1.0/24"
    gateway_id = aws_internet_gateway.igw.id
  }

  
  tags = {
    Name = "rtable"
  }
}
#--------------------------------------------------------------------
resource "aws_route_table_association" "sasso" {
  gateway_id     = aws_internet_gateway.igw.id
  route_table_id = aws_route_table.rtable.id
}*/
