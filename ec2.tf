resource "aws_instance" "Terraform" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  key_name      = "mykey"
  security_groups = [ aws_security_group.terraform_sg.id ]
  subnet_id = aws_subnet.public_subnet.id
 

  tags = {
    Name = "Terraform"
  }

}

output "ip" {
  value = "${aws_instance.Terraform.public_ip}"
}

