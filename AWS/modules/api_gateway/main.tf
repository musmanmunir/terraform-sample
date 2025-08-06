# modules/api_gateway/main.tf
resource "aws_api_gateway_domain_name" "api_gateway_domain_name" {
  domain_name              = var.api_gateway_domain_name
  regional_certificate_arn = var.certificate_arn
  security_policy          = "TLS_1_2"
  endpoint_configuration {
    types = ["REGIONAL"]
  }
}

resource "aws_api_gateway_base_path_mapping" "base_path_mapping" {
  api_id      = var.api_id
  stage_name  = var.api_stage_name
  domain_name = aws_api_gateway_domain_name.api_gateway_domain_name.domain_name
}
