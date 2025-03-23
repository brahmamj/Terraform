variable "name" {
    type = string
    description = "value of name"
    default = "security-group"
}
variable "security_group_tags" {
    type = map(string)
    description = "value of tags"
    default = {
        Name = "uiot-security-group"
    }
  
}
variable "vpc_id" {
    type = string
    description = "value of vpc id"
  
}