resource "aws_instance" "example" {
  ami           = data.aws_ami.amzn-linux-2023-ami.id
  instance_type = "t2.nano"
  subnet_id     = aws_subnet.example.id

  cpu_options {
    core_count       = 2
    threads_per_core = 2
  }

  tags = {
    Name = "tf-example"
  }
}