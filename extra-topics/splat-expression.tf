 resource "aws_instance" "web" {
   ami           = "ami-0a485299eeb98b979"
   instance_type = "t2.micro"
   count = 3

   tags = {
     Name = "HelloWorld"
   }
 }

# #splat Expressions 

 output "instance_id" {
  value = aws_instance.web[*].id
 }


 output "instance_arn" {
   value = aws_instance.web[*].arn
 }


 output "arn_without_splat" {
   value = [aws_instance.web[0].arn,
            aws_instance.web[1].arn,
            aws_instance.web[2].arn
  
   ]
 }

# # For_each = set of Strings

 resource "aws_iam_user" "the-accounts" {
   for_each = toset( ["Todd", "James", "Alice", "Dottie"] )
   name     = each.key
 }


