# main.tf
provider "aws" {
  region = var.aws_region
}

module "route53" {
  source                           = "./modules/route53"
  hosted_zone_name                 = var.hosted_zone_name
  hosted_zone_id_main              = var.hosted_zone_id_main
  api_gateway_domain_name          = var.api_gateway_domain_name
  api_gateway_regional_domain_name = module.api_gateway.regional_domain_name
  api_gateway_regional_zone_id     = module.api_gateway.regional_zone_id
}

module "acm" {
  source                               = "./modules/acm"
  acm_certificate_domain_name          = var.acm_certificate_domain_name
  acm_wildcard_certificate_domain_name = var.acm_wildcard_certificate_domain_name
  hosted_zone_id_main                  = var.hosted_zone_id_main
}

module "api_gateway" {
  source                  = "./modules/api_gateway"
  depends_on              = [module.acm]
  api_gateway_domain_name = var.api_gateway_domain_name
  api_id                  = var.api_id
  api_stage_name          = var.api_stage_name
  certificate_arn         = module.acm.wildcard_certificate_arn
}
