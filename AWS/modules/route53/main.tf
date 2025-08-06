# modules/route53/main.tf
resource "aws_route53_zone" "hosting_zone" {
  name = var.hosted_zone_name
}

resource "aws_route53_record" "main_hosting_zone" {
  zone_id = var.hosted_zone_id_main
  name    = var.hosted_zone_name
  type    = "NS"
  records = aws_route53_zone.hosting_zone.name_servers
  ttl     = 60
}

resource "aws_route53_record" "api_gateway_domain_name" {
  zone_id = aws_route53_zone.hosting_zone.zone_id
  name    = var.api_gateway_domain_name
  type    = "A"
  alias {
    name                   = var.api_gateway_regional_domain_name
    zone_id                = var.api_gateway_regional_zone_id
    evaluate_target_health = false
  }
}

# Define your other records as needed.
