 resource "aws_security_group" "demo_sg" {
   name        = "sample-sg-provisioner"

   ingress {
     from_port   = 80
     to_port     = 80
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
   }

     ingress {
     from_port   = 22
     to_port     = 22
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
   }

 }

 resource "aws_instance" "test" {
   ami = "ami-0669b163befffbdfc"
   instance_type = "t2.micro"
   tags = {
     Name="remote-exec-ec2"
   }
   key_name = "remote-kp"
   vpc_security_group_ids = [aws_security_group.demo_sg.id]

   connection {
     type ="ssh"
     user = "ec2-user"
     private_key = file("./remote-kp.pem")
     host = self.public_ip
   }


 provisioner "remote-exec" {
   inline = [
     "sudo touch /home/ec2-user/movies"    
   ]
 }


   provisioner "local-exec" {
    command = "echo ${self.private_ip} >> private_ips.txt"
  }
 }