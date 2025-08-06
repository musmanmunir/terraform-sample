# modules/api_gateway/outputs.tf
output "regional_domain_name" {
  value = aws_api_gateway_domain_name.api_gateway_domain_name.regional_domain_name
}

output "regional_zone_id" {
  value = aws_api_gateway_domain_name.api_gateway_domain_name.regional_zone_id
}

output "domain_name" {
  value = aws_api_gateway_domain_name.api_gateway_domain_name.domain_name
}
