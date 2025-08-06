# modules/acm/variables.tf
variable "acm_certificate_domain_name" {
  description = "The domain name for the ACM certificate"
  type        = string
}

variable "acm_wildcard_certificate_domain_name" {
  description = "The wildcard domain name for the ACM certificate"
  type        = string
}

variable "hosted_zone_id_main" {
  description = "The ID of the main hosted zone"
  type        = string
}
