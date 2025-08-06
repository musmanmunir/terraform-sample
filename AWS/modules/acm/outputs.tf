# modules/acm/outputs.tf
output "certificate_arn" {
  value = aws_acm_certificate.cert_for_api_gateway.arn
}

output "wildcard_certificate_arn" {
  value = aws_acm_certificate.wildcard_cert_for_api_gateway.arn
}

