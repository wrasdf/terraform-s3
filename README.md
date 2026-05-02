### Usage

- Example 1:

```terraform
module "s3_bucket" {
  source = "github.com/wrasdf/terraform-s3?ref=v1.0.0"
  bucket_name  = "my-versioned-bucket"  
}
```

- Example 2
```
module "s3_bucket" {
  source = "github.com/wrasdf/terraform-s3?ref=v1.0.0"

  bucket_name  = "my-versioned-bucket"
  kms_key_arn  = "arn:aws:kms:us-east-1:123456789012:key/your-key-id" 
}
```
