resource "aws_instance" "web" {
  instance_type = "td.micro"

  tags = {
    Name = "HelloWorld"
  }
}
