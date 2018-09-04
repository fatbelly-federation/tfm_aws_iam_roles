################### VARIABLES ###################

# Canned variables that almost every module will need
variable "remote_state_bucket" {
  description = "Bucket in that stores the terraform state file in s3"
}

variable "dynamodb_table" {
  description = "The name of the dynamodb table used for locking"
}

variable "primary_state_region" {
  description = "the region that the remote state file resides in"
}


variable "region" {
  description = "AWS region we are performing our actions in"
}


