provider "aws" {
  access_key = "ACCESS_KEY"
  secret_key = "SECRET_KEY"
  region     = "us-gov-west-1"
}

resource "aws_vpc" "vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = "true"
}

resource "aws_subnet" "public-subnet-1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.1.0.0/24"
  availability_zone       = "us-gov-west-1a"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "public-subnet-2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.1.1.0/24"
  availability_zone       = "us-gov-west-1b"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "web-subnet-1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.1.2.0/24"
  availability_zone       = "us-gov-west-1a"
  map_public_ip_on_launch = false
}

resource "aws_subnet" "web-subnet-2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.1.3.0/24"
  availability_zone       = "us-gov-west-1b"
  map_public_ip_on_launch = false
}

resource "aws_subnet" "db-subnet-1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.1.4.0/24"
  availability_zone       = "us-gov-west-1a"
  map_public_ip_on_launch = false
}

resource "aws_subnet" "db-subnet-2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.1.5.0/24"
  availability_zone       = "us-gov-west-1b"
  map_public_ip_on_launch = false
}
