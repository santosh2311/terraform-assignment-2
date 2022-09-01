resource "aws_instance" "web2" {
  count = length(var.tag_name)
  ami           = "ami-090fa75af13c156b4"
  instance_type = var.instance_type
  instance_initiated_shutdown_behavior = "stop"

  tags = {
    Name = var.tag_name[count.index]
    owner = "santosh.kumar@cloudeq.com"
    purpose = "training"
  }
}

locals {
  ami = "ami-090fa75af13c156b4"
}

resource "aws_instance" "web" {
  for_each = var.tag_name2
  ami           = local.ami
  instance_type = var.instance_type
  instance_initiated_shutdown_behavior = "stop"

  tags = {
    Name = each.key
    owner = "santosh.kumar@cloudeq.com"
    purpose = "training"
  }
}

# creating S3 Bucket 

resource "aws_s3_bucket" "A" {
  for_each = var.tag_name2
  bucket =  "santosh-bucket"

tags = {
  Name = each.value
  Owner = "santosh.kumar@cloudeq.com"
  Purpose = "practice"

}
}