provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "rabbitmq" {
  name       = "my-rabbitmq-release"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "rabbitmq"
  version    = "11.12.0"

  # set{
  #   name = "auth.username"
  #   value = "admin"
  # }

  # set{
  #   name = "auth.password"
  #   value = "admin"
  # }

  values = [
    "${file("rabbitmq-values.yaml")}"
  ]

#   depends_on = [
#     module.aks
#   ]
}
  # --set rabbitmq.username=admin,rabbitmq.password=secretpassword,rabbitmq.erlangCookie=secretcookie \

resource "helm_release" "jenkins" {
  name       = "my-jenkins-release"
  repository = "https://charts.jenkins.io" # For bitnami jenkins: "https://charts.bitnami.com/bitnami"
  chart      = "jenkins"
  version    = "4.3.10" # Bitnami Jenkins version: "11.0.17"

  values = [
    "${file("jenkins-values.yaml")}"
  ]
}
