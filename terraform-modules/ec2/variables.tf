variable "ami" {
  type = string
  description = "value of ami"
  default = "ami-05c179eced2eb9b5b"

}
variable "instance_type" {
  type = string
  description = "value of instance type"
  default = "t2.micro"
  
}
variable "subnet_id" {
  type = string
  description = "value of subnet id"
  default = "subnet-0b3b3f3f3f3f3f3f3"
}
variable "security_groups" {
  type = list(string)
  description = "value of security groups"
  default = []
}
variable "tags" {
    type = map(string)
    description = "value of tags"
    default = {
        Name = "ec2-instance"
    }
  
}
