# variables.tf
variable "aws_region" {
  description = "The AWS region"
  type        = string
  default     = "us-east-1"
}

variable "hosted_zone_name" {
  description = "The name of the hosted zone"
  type        = string
}

variable "hosted_zone_id_main" {
  description = "The ID of the main hosted zone"
  type        = string
}

variable "acm_certificate_domain_name" {
  description = "The domain name for the ACM certificate"
  type        = string
}

variable "acm_wildcard_certificate_domain_name" {
  description = "The wildcard domain name for the ACM certificate"
  type        = string
}

variable "api_gateway_domain_name" {
  description = "The domain name for the API Gateway"
  type        = string
}

variable "api_id" {
  description = "The ID of the API"
  type        = string
}

variable "api_stage_name" {
  description = "The stage name of the API"
  type        = string
  default     = "v1"
}
