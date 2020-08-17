resource "aws_vpc" "Terraform_VPC" {
 cidr_block = var.vpcCIDRblock
 instance_tenancy = var.instanceTenancy

  tags = {
    Name = "Terraform_VPC"
  }
}
resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.Terraform_VPC.id
  cidr_block              = var.subnetCIDRblock_public
  map_public_ip_on_launch = var.mapPublicIP
  availability_zone       = var.availabilityZone
tags = {
   Name = "public_subnet"
}
}
resource "aws_subnet" "private_subnet" {
  vpc_id                  = aws_vpc.Terraform_VPC.id
  cidr_block              = var.subnetCIDRblock_public
  map_public_ip_on_launch = var.mapPublicIP
  availability_zone       = var.availabilityZone_private
tags = {
   Name = "public_subnet"
}
}






