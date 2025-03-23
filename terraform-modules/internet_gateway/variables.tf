variable "tags" {
    type = map(string)
    description = "value of tags"
    default = {
        Name = "uiot-igw"
    }   
  
}
variable "vpc_id" {
    type = string
    description = "value of vpc id"
  
}