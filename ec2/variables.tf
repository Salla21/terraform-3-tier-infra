variable "ami" {
    default = "ami-0a485299eeb98b979"
    type = string
    description = "ami id"
}


variable "instance_type" {
    default = "t2.micro"
    type = string
    description = "instance type"
}


variable "tags" {
    type = map(string)
    description = "tags"
}



variable "subnet_id" {
    type = string
    description = "subnet id to launch ec2"
}




variable "vpc_id" {
    type = string
    description = "vpc id to launch sg"
}

