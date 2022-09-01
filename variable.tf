variable "instance_type" {
    type = string
  
}


variable "tag_name" {
  type = list(any)
}

variable "tag_name2" {
  type = map(any)
}