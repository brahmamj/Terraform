######### EC2 ########
ami           = "ami-05c179eced2eb9b5b"
instance_type = "t2.micro"
ec2_tags = {
  Name = "uiot-ec2-instance"
}

######### VPC #########
vpc_tags = {
  Name = "uiot-vpc"
}
cidr_block = "10.0.0.0/16"

subne_cidr_block = "10.0.0.0/24"