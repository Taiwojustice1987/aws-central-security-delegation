variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "central_account_id" {
  description = "AWS Account ID of the central account"
  type        = string
  default     = "626635400294"
}

variable "member_account_id" {
  description = "AWS Account ID of the member account"
  type        = string
  default     = "135808961729"
}

variable "member_email" {
  description = "Email of the member account for GuardDuty notifications"
  type        = string
  default     = "tolorunlana56@gmail.com"
}
