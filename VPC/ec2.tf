resource "aws_instance" "web1" {
      ami = lookup(var.AMI_ID, var.region)
      instance_type = "t2.micro"
      subnet_id = aws_subnet.subnet_1.id
      vpc_security_group_ids = ["${aws_security_group.allow_ssh.id}"]
      key_name = "demo"

}