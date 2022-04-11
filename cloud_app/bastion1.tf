resource "aws_instance" "bastion1" {
  ami                         = data.aws_ami.windows-2019.id
  instance_type               = "t3a.medium"
  subnet_id                   = aws_subnet.public-subnet-1
  associate_public_ip_address = true

  root_block_device {
    volume_size = 50
    volume_type = "gp2"
    encrypted   = true
  }
}

resource "aws_eip" "bastion1-eip" {
  vpc = true
}

# Associate Elastic IP to Windows Server
resource "aws_eip_association" "windows-eip-association" {
  instance_id   = aws_instance.bastion1.id
  allocation_id = aws_eip.bastion1-eip.id
}
