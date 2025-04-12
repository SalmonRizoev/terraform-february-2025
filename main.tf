resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidar

   tags = {
    Name = "${var.environment}-vpc"
  }
}

resource "aws_subnet" "mai1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet1_cidar

  tags = {
    Name = "${var.environment}-subnet1"
  }
}

resource "aws_subnet" "mai2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet2_cidar

  tags = {
    Name = "${var.environment}-subnet2"
  }
}


variable vpc_cidar {}
variable subnet1_cidar {}
variable subnet2_cidar {}
variable environment {} 