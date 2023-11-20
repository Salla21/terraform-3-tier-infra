 resource "aws_security_group" "dynamic_sg" {
     name = "dynamic-sg"
     description = "dynamic security group"

     dynamic "ingress" {
      for_each = [8200, 8201, 8300, 9200, 9500]
      content {
     from_port   = ingress.value
     to_port     = ingress.value
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
      } 
     }

 }




 resource "aws_security_group" "demo_sg" {
   name        = "sample-sg"

   ingress {
     from_port   = 8200
     to_port     = 8200
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
   }

   ingress {
     from_port   = 8201
     to_port     = 8201
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
   }

   ingress {
     from_port   = 8300
     to_port     = 8300
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
   }

   ingress {
     from_port   = 9200
     to_port     = 9200
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
   }

   ingress {
     from_port   = 9500
     to_port     = 9500
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
   }
 }

