resource "aws_vpc" "new_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name= "fullcycle-vpc"
  }
}

# obter zonas de disponibilidade
#
# data "aws_availability_zones" "available" {}
# output "az" {
#   value = "${data.aws_availability_zones.available.names}"
# }

resource "aws_subnet" "new_subnet_1" {
  availability_zone = "us-east-1a"
  vpc_id = aws_vpc.new_vpc.id
  cidr_block = "10.0.0.0/24"
  tags = {
    "Name" = "fullcycle-subnet-1"
  }
}
resource "aws_subnet" "new_subnet_2" {
  availability_zone = "us-east-1b"
  vpc_id = aws_vpc.new_vpc.id
  cidr_block = "10.0.1.0/24"
  tags = {
    "Name" = "fullcycle-subnet-2"
  }
}