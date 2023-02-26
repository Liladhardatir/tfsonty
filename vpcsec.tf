/*
provider "aws" {
    alias = "west"
  region = "eu-west-1"
}
resource "aws_vpc" "vpcsec" {
  cidr_block = "173.0.0.0/16"

  tags = {
    Name = "myvpca"
  }
}
#----------------------------------------------------------------
resource "aws_subnet" "subnet11" {
  vpc_id            = aws_vpc.vpcsec.id
  cidr_block        = "173.0.1.0/24"
  availability_zone = "eu-west-1"

  tags = {
    Name = "su11"
  }
}
resource "aws_subnet" "subnet22" {
  vpc_id            = aws_vpc.vpcsec.id
  cidr_block        = "173.0.2.0/24"
  availability_zone = "eu-west-1"

  tags = {
    Name = "su22"
  }
}
resource "aws_subnet" "subnet33" {
  vpc_id            = aws_vpc.vpcsec.id
  cidr_block        = "173.0.3.0/24"
  availability_zone = "eu-west-1"

  tags = {
    Name = "su33"
  }
}
#-------------------------------------------------------------------


resource "aws_internet_gateway" "igwm" {
  vpc_id = aws_vpc.vpcsec.id

  tags = {
    Name = "main"
  }
}
#-------------------------------------------------------------------
resource "aws_route_table" "rtablee" {
  vpc_id = aws_vpc.vpcsec.id

  route {
    cidr_block = "173.0.0.0/24"
    gateway_id = aws_internet_gateway.igwm.id
  }

  
  tags = {
    Name = "rtable"
  }
}
*/