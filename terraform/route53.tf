resource "aws_route53_record" "myRecord" {
  zone_id = var.hosted_zone_id
  name    = "alb.${var.top_level_domain}"
  type    = "CNAME"
  ttl     = 60
  records = [aws_lb.production.dns_name]
}