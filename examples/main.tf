module "s3_bucket" {
  source = "../"
  # source = "github.com/wrasdf/terraform-s3?ref=v1.0.1"
  bucket_name = "labs-test-versioned-bucket"
}
