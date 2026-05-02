variable "create_bucket" {
  description = "Controls if S3 bucket should be created"
  type        = bool
  default     = true
}

variable "region" {
  description = "Region where the resource(s) will be managed."
  type        = string
  default     = "ap-southeast-2"
}

variable "bucket_name" {
  description = "Name of the bucket"
  type        = string
}

variable "bucket_prefix" {
  description = "(Optional, Forces new resource) Creates a unique bucket name beginning with the specified prefix. Conflicts with bucket."
  type        = string
  default     = null
}

variable "bucket_namespace" {
  description = "Namespace for the bucket. Determines bucket naming scope. Valid values: account-regional, global. Defaults to global (AWS)"
  type        = string
  default     = null
}

variable "tags" {
  description = "Resource tagging"
  type        = map(string)
  default     = {}
}

variable "force_destroy" {
  description = "Whether force destroy to bucket"
  type        = bool
  default     = false
}

variable "object_lock_enabled" {
  description = "Whether S3 bucket should have an Object Lock configuration enabled."
  type        = bool
  default     = false
}

variable "block_public_acls" {
  description = "Whether Amazon S3 should block public ACLs for this bucket."
  type        = bool
  default     = true
}

variable "block_public_policy" {
  description = "Whether Amazon S3 should block public bucket policies for this bucket."
  type        = bool
  default     = true
}

variable "ignore_public_acls" {
  description = "Whether Amazon S3 should ignore public ACLs for this bucket."
  type        = bool
  default     = true
}

variable "restrict_public_buckets" {
  description = "Whether Amazon S3 should restrict public bucket policies for this bucket."
  type        = bool
  default     = true
}

variable "skip_destroy_public_access_block" {
  description = "Whether to skip destroying the S3 Bucket Public Access Block configuration when destroying the bucket. Only used if `public_access_block` is set to true."
  type        = bool
  default     = true
}

variable "bucket_policy_json" {
  description = "Policy to apply to the bucket"
  type        = string
  default     = null
}

variable "enable_versioning" {
  description = "Whether enable object versioning to the bucket"
  type        = bool
  default     = true
}

variable "kms_key_arn" {
  description = "KMS key ARN for service side encryption"
  type        = string
  default     = null
}

variable "lifecycle_rules" {
  description = "List of rule objects for bucket lifecycle"
  type        = any
  default     = []
}
