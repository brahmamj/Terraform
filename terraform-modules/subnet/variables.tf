variable "vpc_id" {
    type = string
    description = "value of vpc id"
  
}
variable "tags" {
    type = map(string)
    description = "value of tags"
    default = {
        Name = "uiot-subnet"
    }
  
}
variable "cidr_block" {
    type = string
    description = "value of cidr block"
      
}