resource "aws_instance" "server" {
  count = "${length(var.instances)}"
  ami = var.instances[count.index].ami
  instance_type =var.instances[count.index].instance_type
  subnet_id =var.instances[count.index].subnet
  #associate_public_ip_address 
  key_name = var.instances[count.index].key_name
  vpc_security_group_ids = [
        var.instances[count.index].security_group
  ]
  tags = {
    Name =  var.instances[count.index].tags
  
  }
   provisioner "local-exec" {
    command = "echo  ${self.public_ip} >> ip"
  } 
 
}
