resource "helm_release" "portkey" {
  name             = "portkey-app"
  repository       = "./charts/"
  chart            = "portkey-app"
  namespace        = "portkey"
  wait             = true
  create_namespace = true
  values = [
    "${file("${path.module}/templates/portkey-values.yaml")}"
  ]
}