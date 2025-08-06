# modules/route53/outputs.tf
output "zone_id" {
  value = aws_route53_zone.hosting_zone.zone_id
}
