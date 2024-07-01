variable "instance_type" {
  default = {
    dev = "t3.micro"
    prod ="t3.small"
  }
}

# ec2  variables 
variable "common_tags" {
  type = map
  default = {
    project = "expense"
    environment= "dev"
    terraform =true
  }
}


# variable "environment" {
#     # type = string
#     # default = "dev"
  
# }

