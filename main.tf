provider "aws" {
    region ="us-east-2"
    
}
variable "avail_zone" {}

variable "subnet_cidr_block" {
    description = "subnet_cidr_block"

}
resource "aws_vpc" "development-vpc"{
    cidr_block = "10.0.0.0/16"
    tags={
        Name: "development"
    
    }


}
resource "aws_subnet" "dev-subnet-1"{
    vpc_id= aws_vpc.development-vpc.id
    cidr_block = var.subnet_cidr_block
    availability_zone = var.avail_zone
    tags={
        "Name":"subnet-1-dev"
    }
}
