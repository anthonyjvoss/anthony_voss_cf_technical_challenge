resource "aws_instance" "wpserver2" {
  ami           = data.aws_ami.redhat-linux
  instance_type = "t3a.micro"
  subnet_id     = aws_subnet.web-subnet-2

  root_block_device {
    volume_size = 20
  }

  provisioner "remote-exec" {
    inline = ["sudo hostnamectl set-hostname wpserver2"]
  }
}
