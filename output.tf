output "op-name" {
  value = aws_instance.web
}

output "op-A" {
#   value = aws_s3_bucket[1.].A.bucket
   value = {
    for k, v in aws_s3_bucket.A : k => v
}
}