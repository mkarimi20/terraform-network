output "bucketname" {
  value = "S3 bucket  ${aws_s3_bucket.newbucket.bucket}   created"
}
output "public_ips" {
     value = "${aws_instance.web.*.public_ip}"