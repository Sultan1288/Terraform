# first subnet
resource "aws_subnet" "subnet_1" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = var.pub_cidr_block
    tags = {
      "Name" = "Subnet_1_public"
    }
  
}
# second subnet
resource "aws_subnet" "subnet_2" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = var.pri_cidr_block
    tags = {
      "Name" = "Subnet_2_private"
    }
  
}

resource "aws_subnet" "subnet_3" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = var.pri_cidr_block_1
    availability_zone = "us-west-2a"
    tags = {
      "Name" = "Subnet_3_private"
    }
 
}