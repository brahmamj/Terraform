variable "ami" {
  type        = string
  description = "value of ami"
  default     = "ami-05c179eced2eb9b5b"
  validation {
    condition     = length(var.ami) > 0 && startswith(var.ami, "ami-")
    error_message = "The AMI cannot be blank"
  }

}

variable "instance_type" {
  type        = string
  description = "value of instance type"
  default     = "t2.large"

}
variable "ec2_tags" {
  type        = map(string)
  description = "value of tags"
  default = {
    Name = "ec2-instance"
  }

}
variable "name" {
  type        = string
  description = "value of name"
  default     = "security-group"
}
variable "security_group_tags" {
  type        = map(string)
  description = "value of tags"
  default = {
    Name = "uiot-security-group"
  }

}

variable "vpc_tags" {
  type        = map(string)
  description = "value of tags"
  default = {
    Name = "uiot-vpc"
  }

}

variable "cidr_block" {
  type        = string
  description = "value of cidr block"
  default     = "10.0.0.0/16"

}
/*variable "vpc_id" {
  type        = string
  description = "value of vpc id"

}*/
variable "subnet_tags" {
  type        = map(string)
  description = "value of tags"
  default = {
    Name = "uiot-subnet"
  }

}
variable "subne_cidr_block" {
  type        = string
  description = "value of cidr block"
  default     = "10.0.0.0/24"

}


variable "route_table_tags" {
  type        = map(string)
  description = "value of tags"
  default = {
    Name = "uiot-route-table"
  }

}

variable "route_cidr_block" {
  type        = string
  description = "value of route cidr block"
  default     = "0.0.0.0/0"

}
/*variable "gateway_id" {
  type        = string
  description = "value of gateway id"

}*/

variable "igw_tags" {
  type        = map(string)
  description = "value of tags"
  default = {
    Name = "uiot-igw"
  }

}