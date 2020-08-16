resource "aws_instance" "Terraform" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  key_name      = "mykey"
  subnet_id = aws_subnet.public_subnet.id
  #security_groups = ""

  tags = {
    Name = "Terraform"
  }

}

output "ip" {
  value = "${aws_instance.Terraform.public_ip}"
}

