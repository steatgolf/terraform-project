data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }


}

resource "aws_instance" "fastapi" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.fastapi.key_name
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.ssh.id]
  subnet_id                   = aws_subnet.public-subnet-1a.id

  tags = {
    Name = "fastapi"
  }
}