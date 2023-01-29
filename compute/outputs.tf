output "instance" {
  value = aws_instance.app_node[*]
}

output "instance_port" {
  value = aws_lb_target_group_attachment.app_tg_attach[0].port
}