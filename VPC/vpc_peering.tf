data "aws_vpc" "acceptor" {
    id       = var.acceptor_vpc_id
}


resource "aws_vpc_peering_connection" "demo" {
    vpc_id = aws_vpc.my_vpc.id
    peer_vpc_id = var.acceptor_vpc_id
    tags = {
      "Name" = "Aws Vpc Peering"
    }
  
}

resource "aws_vpc_peering_connection_accepter" "demo_acceptor" {
    vpc_peering_connection_id = aws_vpc_peering_connection.demo.id
    auto_accept = true
  
}