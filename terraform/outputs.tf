# locals {

#   output = templatefile("./values.tftpl",{ 

#     #nginx ingress controller
#     nginx_controller = module.eks.nginx_ingress_dns_name
#     #rabbitmq
#     mq_user = module.mq.user
#     mq_pwd = "${var.name}-mq"
#     mq_address = module.mq.address
#     mq_host = replace(module.mq.address, ":${module.mq.port}","")
#     mq_port = module.mq.port

#     #cms nlb IPs
#     cms_ip = <<-EOT

#     ${indent(2,"  - cms.${var.domain}") ~}
#     EOT
#   })

#    sensitive = true
  
# }