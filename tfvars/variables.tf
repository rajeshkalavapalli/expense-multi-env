variable "instance_names" {
  default = {
    # frontend = "t3.small"
    # backend = "t2.micro"
    # mysql = "t3.small"
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

variable "project_name" {
  type = string
  default = "expense"
}

variable "environment" {
    # type = string
    # default = "dev"
  
}


# route 53 variables 
variable "zone_id" {
  type = string
  default = "Z02400681RG5QICC3BHZN"
}

variable "type" {
  default = "A"
}

variable "domine_name" {
  default = "bigmatrix.in"
}