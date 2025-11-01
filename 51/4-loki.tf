# Helm chart for Loki
resource "helm_release" "loki" {
  name       = "loki"
  repository = "https://grafana.github.io/helm-charts"
  chart      = "loki"
  version    = "6.45.2"
  namespace  = "observability"

  values     = [file("${path.module}/values/loki.yaml")]
  depends_on = [kubernetes_namespace.observability-namespace]
}