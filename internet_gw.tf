
resource "aws_internet_gateway" "terraform_ig" {
 vpc_id = aws_vpc.Terraform_VPC.id
 tags = {
        Name = "terraform_ig"
}
}