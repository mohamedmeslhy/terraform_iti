terraform {
 backend "s3" {
 bucket = "mymoselhy-bucket"
 key = "dev/terraform.tfstate"
 region = "us-east-1"
 }
}


