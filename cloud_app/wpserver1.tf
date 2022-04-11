resource "aws_instance" "wpserver1" {
  ami           = data.aws_ami.redhat-linux
  instance_type = "t3a.micro"
  subnet_id     = aws_subnet.web-subnet-1

  root_block_device {
    volume_size = 20
  }

  provisioner "remote-exec" {
    inline = ["sudo hostnamectl set-hostname wpserver1"]
  }
}
