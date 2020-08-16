# Create the Internet Access
resource "aws_route" "terraform_internet_access" {
  route_table_id         = aws_route_table.terraform_rt.id
  destination_cidr_block = var.destinationCIDRblock
  gateway_id             = aws_internet_gateway.terraform_ig.id
} # end resource

# Associate the Route Table with the Subnet
resource "aws_route_table_association" "My_VPC_association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.terraform_rt.id
} # end resource