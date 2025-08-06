# modules/route53/variables.tf
variable "hosted_zone_name" {
  description = "The name of the hosted zone"
  type        = string
}

variable "hosted_zone_id_main" {
  description = "The ID of the main hosted zone"
  type        = string
}

variable "api_gateway_domain_name" {
  description = "The domain name for the API Gateway"
  type        = string
}

variable "api_gateway_regional_domain_name" {
  description = "The regional domain name for the API Gateway"
  type        = string
}

variable "api_gateway_regional_zone_id" {
  description = "The regional zone ID for the API Gateway"
  type        = string
}
