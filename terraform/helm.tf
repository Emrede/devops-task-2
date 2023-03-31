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

  values = [
    "${file("rabbitmq-values.yaml")}"
  ]
}
# --set rabbitmq.username=admin,rabbitmq.password=secretpassword,rabbitmq.erlangCookie=secretcookie \

# resource "helm_release" "jenkins" {
#   name       = "my-jenkins-release"
#   repository = "https://charts.jenkins.io" # For bitnami jenkins: "https://charts.bitnami.com/bitnami"
#   chart      = "jenkins"
#   version    = "4.3.10" # Bitnami Jenkins version: "11.0.17"

#   values = [
#     "${file("jenkins-values.yaml")}"
#   ]
# }

# resource "helm_release" "python-consumer" {
#   name            = "python-consumer"
#   chart           = "../helm-charts/python-consumer"
# }
resource "helm_release" "python-producer" {
  name            = "python-producer"
  chart           = "../helm-charts/python-producer"
  replace         = true
  recreate_pods   = true
  cleanup_on_fail = true
  force_update    = true
}
resource "helm_release" "python-producer-2" {
  name            = "python-producer-2"
  chart           = "../helm-charts/python-producer"
  replace         = true
  recreate_pods   = true
  cleanup_on_fail = true
  force_update    = true
}

# resource "helm_release" "python-producer-3" {
#   name       = "python-producer-3"
#   chart      = "../helm-charts/python-producer"
# }
