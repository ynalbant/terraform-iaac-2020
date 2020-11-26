resource "aws_route53_record" "wordpress" {
  zone_id = "Z00476671ZXQ0785BR0KG"
  name    = "wordpress.yunusnalbant.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.web.public_ip}"]  
}