#Nat Gateway
resource "aws_nat_gateway" "my_nat_gw" {
    connectivity_type = "private"
    subnet_id = aws_subnet.subnet_1.id

    tags = {
      "Name" = "my_nat_gw"
    }
  
}