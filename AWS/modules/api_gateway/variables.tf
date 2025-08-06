# modules/api_gateway/variables.tf
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
}

variable "certificate_arn" {
  description = "The ARN of the ACM certificate"
  type        = string
}

