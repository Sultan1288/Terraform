#route table
resource "aws_route_table" "public_route" {
    vpc_id = aws_vpc.my_vpc.id

    route {
        cidr_block = var.public_route
        gateway_id = aws_internet_gateway.my_gw.id

    }

    tags = {
        "Name" = "public_route"
    }
  
}

resource "aws_route_table" "private_route" {
    vpc_id = aws_vpc.my_vpc.id

    route {
        cidr_block = "${var.private_route}"
        gateway_id = "${aws_nat_gateway.my_nat_gw.id}"

    } 
    route {
      cidr_block = "${var.acceptor_CIDR_Block}"
      vpc_peering_connection_id = "${aws_vpc_peering_connection.demo.id}"
    }
    
    tags = {
      "Name" = "private_route"
    }
}
resource "aws_route_table" "private_route_1" {
    vpc_id = aws_vpc.my_vpc.id

    route {
        cidr_block = "${var.private_route_1}"
        gateway_id = "${aws_nat_gateway.my_nat_gw.id}"

    } 
    route {
      cidr_block = "${var.acceptor_CIDR_Block}"
      vpc_peering_connection_id = "${aws_vpc_peering_connection.demo.id}"
   }
   
    tags = {
      "Name" = "private_route_1"
    }
}
#route table association
resource "aws_route_table_association" "public_route_association" {
    subnet_id = aws_subnet.subnet_1.id
    route_table_id = aws_route_table.public_route.id
      
}

resource "aws_route_table_association" "private_route_association" {
    subnet_id = aws_subnet.subnet_2.id
    route_table_id = aws_route_table.private_route.id

}

#resource "aws_route_table_association" "private_route_association_1" {
#   subnet_id = aws_subnet.subnet_3.id
#    route_table_id = aws_route_table.private_route_1.id

#}