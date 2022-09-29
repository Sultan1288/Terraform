#Name of the VPC
variable "vpc_name" {
    default = "my_vpc"
    description = "name of the VPC"
  
}
#Defining the CIDR Block for VPC
variable "vpc_cidr_block" {
    default = "10.0.0.0/16"
    description = "cidr block of the VPC"
}
#Defining CIDR Block for Subnet_1
variable "pub_cidr_block" {
    default = "10.0.1.0/24"
    description = "cidr block of the public subnet"
}
#Defining CIDR Block for Subnet_2
variable "pri_cidr_block" {
    default = "10.0.2.0/24"
    description = "cidr block of the private subnet"
}
variable "pri_cidr_block_1" {
    default = "10.0.3.0/24"
    description = "cidr block of the private subnet"
}
#Public Route Ip
variable "public_route" {
    default = "0.0.0.0/0"
  
}
#Private Route
variable "private_route" {
    default = "10.0.2.0/24"
  
}
variable "private_route_1" {
    default = "10.0.3.0/24"
  
}
#Default region
variable "region" {
    default = "us-west-2"
  
}
#
variable "AMI_ID" {
    type = map
    default = {
        us-east-1 = "ami-0f69dd1d0d03ad669"
        us-west-2 = "ami-0c09c7eb16d3e8e70"
        ap-south-1 = "ami-0c66c4f14d217d16f"
    }
  
}
variable "KeyName" {
    default = "mykey"
  
}
# VPC Peering acceptor id
variable "acceptor_vpc_id" {
    default = "vpc-0531ceaef6c91a1ab"
  
}
# CIDR Block of the acceptor VPC ID
variable "acceptor_CIDR_Block" {
    default = "172.31.0.0/16"
  
}