module "vpc" {
  source = "./modules/vpc"
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = "demo-logs-bucket"
}