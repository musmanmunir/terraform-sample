# modules/acm/main.tf
resource "aws_acm_certificate" "cert_for_api_gateway" {
  domain_name       = var.acm_certificate_domain_name
  key_algorithm     = "RSA_2048"
  validation_method = "DNS"
  options {
    certificate_transparency_logging_preference = "ENABLED"
  }
}

resource "aws_acm_certificate" "wildcard_cert_for_api_gateway" {
  domain_name       = var.acm_wildcard_certificate_domain_name
  key_algorithm     = "RSA_2048"
  validation_method = "DNS"
  options {
    certificate_transparency_logging_preference = "ENABLED"
  }
}

resource "aws_route53_record" "acm_cname_main" {
  for_each = {
    for dvo in aws_acm_certificate.cert_for_api_gateway.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }

  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 60
  type            = each.value.type
  zone_id         = var.hosted_zone_id_main
}

resource "aws_route53_record" "acm_cname_main_wildcard" {
  for_each = {
    for dvo in aws_acm_certificate.wildcard_cert_for_api_gateway.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }

  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 60
  type            = each.value.type
  zone_id         = var.hosted_zone_id_main
}

resource "aws_acm_certificate_validation" "cert_for_api_gateway" {
  certificate_arn         = aws_acm_certificate.cert_for_api_gateway.arn
  validation_record_fqdns = [for record in aws_route53_record.acm_cname_main : record.fqdn]
}

resource "aws_acm_certificate_validation" "wildcard_cert_for_api_gateway" {
  certificate_arn         = aws_acm_certificate.wildcard_cert_for_api_gateway.arn
  validation_record_fqdns = [for record in aws_route53_record.acm_cname_main_wildcard : record.fqdn]
}
