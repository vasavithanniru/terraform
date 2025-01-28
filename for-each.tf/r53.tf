resource "aws_route53_record" "expense" {
    for_each = aws_instance.terraform
    zone_id = var.zone_id
    # if each.key = frontend , name should be var.domain_name else mysql/backend.domain name
    name = each.key == "frontend" ? var.domain_name : "${each.key}.${var.domain_name}" 
    ttl = "1" 
    type = "A" 
    records = each.key == "frontend" ? [each.value.public_ip] : [each.value.private_ip]
 }