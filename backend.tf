terraform {
  backend "s3" {
    bucket         = "backendbucket251809"
    key            = "backend/s3/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock-dynamo"
    encrypt        = true
    
  }
}