# outputs.tf
output "zone_id" {
  value = module.route53.zone_id
}

output "certificate_arn" {
  value = module.acm.certificate_arn
}

output "wildcard_certificate_arn" {
  value = module.acm.wildcard_certificate_arn
}

output "api_gateway_domain_name" {
  value = module.api_gateway.domain_name
}

output "api_gateway_regional_domain_name" {
  value = module.api_gateway.regional_domain_name
}

output "api_gateway_regional_zone_id" {
  value = module.api_gateway.regional_zone_id
}
