resource "aws_instance" "server" {


  count = var.count_instance



  ami = var.ami_id



  instance_type = var.instance_type



  subnet_id = var.subnet_id



  vpc_security_group_ids = var.security_group_ids



  key_name = var.key_name



  associate_public_ip_address = var.enable_public_ip



  user_data = var.user_data



  root_block_device {


    volume_type = "gp3"


    volume_size = var.root_volume_size


    encrypted = true


  }



  tags = {


    Name = "${var.instance_name}-${count.index + 1}"


    Environment = "dev"


    ManagedBy = "Terraform"


  }


}