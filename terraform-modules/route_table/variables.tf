variable "vpc_id" {
    type = string
    description = "value of vpc id"
  
}

variable "tags" {
    type = map(string)
    description = "value of tags"
    default = {
        Name = "uiot-route-table"
    }   
  
}

variable "cidr_block" {
    type = string
    description = "value of route cidr block"
  
}
variable "gateway_id" {
    type = string
    description = "value of gateway id"
  
}

variable "subnet_id" {
    type = string
    description = "value of subnet id"
  
}