resource "aws_route53_zone" "vpc_public_zone" {
  name = "${var.dns_domain}"

  tags {
    Name          = "${var.dns_domain}.${var.environment}.PublicZone"
    Environment   = "${var.environment}"
    Description   = "PublicZone"
    Contact       = "${var.vpc_contact}"
    Orchestration = "${var.orchestration}"
  }
}
