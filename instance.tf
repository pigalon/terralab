resource "aws_instance" "lab" {
  count = 2   
  ami           = "ami-0c229bfed6d47178b"
  instance_type = "t2.micro"

  # the VPC subnet
  subnet_id = aws_subnet.lab-public-1.id

  # the security group
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]

  # the public SSH key
  key_name = aws_key_pair.mykeypair.key_name

  tags = {
    Name  = "${var.machines_lab[count.index].name}" #"lab-${count.index}"
  }

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("mykey")
    host        = self.public_ip
  }


  provisioner "remote-exec" {
    inline = [
        "sudo adduser --disabled-password --gecos '' --shell /bin/bash ${var.machines_lab[count.index].name}",
        "sudo mkdir -p /home/${var.machines_lab[count.index].name}/.ssh",
        "sudo touch /home/${var.machines_lab[count.index].name}/.ssh/authorized_keys",
        "sudo echo '${var.machines_lab[count.index].public_key}' > authorized_keys",
        "sudo mv authorized_keys /home/${var.machines_lab[count.index].name}/.ssh",
        "sudo chown -R ${var.machines_lab[count.index].name}:${var.machines_lab[count.index].name} /home/${var.machines_lab[count.index].name}/.ssh",
        "sudo chmod 700 /home/${var.machines_lab[count.index].name}/.ssh",
        "sudo chmod 600 /home/${var.machines_lab[count.index].name}/.ssh/authorized_keys",
        "sudo usermod -aG sudo ${var.machines_lab[count.index].name}",
        "sudo passwd -d ${var.machines_lab[count.index].name}"
   ]
 }

}


