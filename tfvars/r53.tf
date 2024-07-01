#creating route 53

resource "aws_route53_record" "expense" {
  for_each = aws_instance.expense
  zone_id = var.zone_id
  name    = each.key == "frontend" ?  var.domine_name : "${each.key}.${var.domine_name}"
  type    = var.type
  ttl     = 1
  records =  startswith(each.key, "frontend") ? [each.value.public_ip] : [each.value.private_ip]
  #override if already exist
  allow_overwrite = true
}