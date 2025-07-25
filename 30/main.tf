# Initialize terraform providers
provider "kubernetes" {
  config_path = "~/.kube/config"
}
provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}
# Create a namespace for observability
resource "kubernetes_namespace" "observability-namespace" {
  metadata {
    name = "observability"
  }
}

# Helm chart for Grafana
resource "helm_release" "grafana" {
  name             = "grafana"
  repository       = "https://grafana.github.io/helm-charts"
  chart            = "grafana"
  version          = "8.15.0"
  namespace        = "observability"

  values = [file("${path.module}/values/grafana.yaml")]
  depends_on = [ kubernetes_namespace.observability-namespace ]
}

# Helm chart for Loki
resource "helm_release" "loki" {
  name       = "loki"
  repository = "https://grafana.github.io/helm-charts"
  chart      = "loki"
  version    = "6.33.0"
  namespace  = "observability"

  values = [file("${path.module}/values/loki.yaml")]
  depends_on = [ kubernetes_namespace.observability-namespace ]
}

# Helm chart for promtail
resource "helm_release" "promtail" {
  name       = "promtail"
  repository = "https://grafana.github.io/helm-charts"
  chart      = "promtail"
  version    = "6.17.0"
  namespace  = "observability"

  values = [file("${path.module}/values/promtail.yaml")]
  depends_on = [ kubernetes_namespace.observability-namespace ]
}