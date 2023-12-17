terraform {
      backend "s3" {
      bucket = "kgs-terraform"
      key = "test/terraform.tfstate"
      region = "us-east1"
    }
}
 resource "null_resource" "test" {}