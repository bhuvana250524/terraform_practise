# create VPC
resource "aws_vpc" "VPC1" {
   cidr_block = "10.0.0.0/16"
   tags = {
     name= var.vnet
   }
}
resource "aws_subnet" "subnet1" {
    vpc_id = aws_vpc.VPC1.id
    cidr_block = "10.0.1.0/24"
    tags = {
        name = var.subnet
    }
  
}
resource "aws_instance" "vm1" {
    ami = var.ami
    instance_type = var.instance_type 
    subnet_id = aws_subnet.subnet1.id
    tags = {
      name = var.vmname
    }
}