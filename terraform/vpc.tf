# create a vpc for the ECS cluster
resource "aws_vpc" "vpc_ecs" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name = "vpc-ecs"
  }
}

# create an internet gateway for the VPC
resource "aws_internet_gateway" "vpc_igw" {
  vpc_id = aws_vpc.vpc_ecs.id
  tags = {
    Name = "igw-ecs"
  }
}

# create a public subnet for the ECS cluster
resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.vpc_ecs.id
  cidr_block = "10.0.2.0/24"
  tags = {
    Name = "subnet-ecs-public"
  }
  availability_zone = "ap-south-1a"
  map_public_ip_on_launch = true
}

# create a route table for the public subnet
resource "aws_route_table" "vpc_route_table" {
  vpc_id = aws_vpc.vpc_ecs.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vpc_igw.id
  }
}

# associate the route table with the public subnet
resource "aws_route_table_association" "public_subnet_association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.vpc_route_table.id
}