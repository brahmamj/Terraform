resource "aws_subnet" "subnet" {
    vpc_id = var.vpc_id
    cidr_block = var.cidr_block
    tags = var.tags
    availability_zone = "ap-south-1a"
    map_public_ip_on_launch = true
}