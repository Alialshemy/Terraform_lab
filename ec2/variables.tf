
variable "instances" {
  type = list(object({

    ami = string
    instance_type= string
    security_group = string
    subnet = string
    key_name=string
    tags= string
  }))
}


