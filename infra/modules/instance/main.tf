resource "aws_eip" "eip" {
  vpc = true
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.app_server.id
  allocation_id = aws_eip.eip.id
}

resource "aws_instance" "app_server" {
  ami           = var.instance_ami
  instance_type = "t2.micro"

  tags = {
    Name = "Study AppServer"
  }

  vpc_security_group_ids = [
    var.ec2_sg_id
  ]

  user_data = data.ct_config.config.rendered
}

data "ct_config" "config" {
  content = templatefile("${path.module}/config.tpl", {
    key = file(var.ssh_key_path),
    user = var.user
  })
  strict = true
}
