# Internet VPC
resource "aws_vpc" "lab" {
  cidr_block           = "192.168.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  enable_classiclink   = "false"
  tags = {
    Name = "lab"
  }
}

# Subnets
resource "aws_subnet" "lab-public-1" {
  vpc_id                  = aws_vpc.lab.id
  cidr_block              = "192.168.1.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "eu-west-3a"

  tags = {
    Name = "lab-public-1"
  }
}


# Internet GW
resource "aws_internet_gateway" "lab-gw" {
  vpc_id = aws_vpc.lab.id

  tags = {
    Name = "lab"
  }
}

# route tables
resource "aws_route_table" "lab-public" {
  vpc_id = aws_vpc.lab.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.lab-gw.id
  }

  tags = {
    Name = "lab-public-1"
  }
}

# route associations public
resource "aws_route_table_association" "lab-public-1-a" {
  subnet_id      = aws_subnet.lab-public-1.id
  route_table_id = aws_route_table.lab-public.id
}


