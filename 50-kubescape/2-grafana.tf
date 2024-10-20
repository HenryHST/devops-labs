# Helm chart for Grafana
resource "helm_release" "grafana" {
  name       = "grafana"
  repository = "https://grafana.github.io/helm-charts"
  chart      = "grafana"
  version    = "8.5.8"
  namespace  = "observability"

  values     = [file("${path.module}/values/grafana.yaml")]
  depends_on = [kubernetes_namespace.observability-namespace]
}