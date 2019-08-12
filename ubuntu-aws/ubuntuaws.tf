# AWS in US-East-Ohio
provider "aws" {
  region = "us-east-2"
}

# New resource for the S3 bucket our application will use.
resource "aws_s3_bucket" "example_s3_alfredo" {
  # NOTE: S3 bucket names must be unique across _all_ AWS accounts, so
  # this name must be changed before applying this example to avoid naming
  # conflicts.
  bucket = "terraform-s3-alfredo"
  acl    = "private"
}

resource "aws_instance" "hello-instance" {
 ami = "ami-5e8bb23b"
 instance_type = "t2.micro"
 depends_on = [aws_s3_bucket.example_s3_alfredo]
 #cpu_core_count = "1"
 #cpu_threads_per_core = "1"
 provisioner "local-exec" {
  command = "echo ${aws_instance.hello-instance.public_ip} > ip_address.txt"
 }
 tags = {
    Name        = "instance-initial"
    Environment = "Dev"
 }
}
