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
resource "helm_release" "python-consumer" {
  name            = "python-consumer"
  chart           = "../helm-charts/python-consumer"
}
resource "helm_release" "python-producer" {
  name            = "python-producer"
  chart           = "../helm-charts/python-producer"
}