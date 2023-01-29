output "lb_target_group_arn" {
  value = aws_lb_target_group.app_tg.arn
}

output "lb_endpoint" {
  value = aws_lb.app_lb.dns_name
}