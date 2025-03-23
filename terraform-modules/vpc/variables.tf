variable "tags" {
    type = map(string)
    description = "value of tags"
    default = {
        Name = "vpc"
    }   
  
}

variable "cidr_block" {
    type = string
    description = "value of cidr block"
    default = "10.0.0.0/16"
  
}