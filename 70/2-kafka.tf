# Helm chart for Strimzi Kafka
resource "helm_release" "strimzi-cluster-operator" {
  name = "strimzi-cluster-operator"  
  repository = "https://strimzi.io/charts/"
  chart = "strimzi-kafka-operator"
  version = "0.49.1"
  namespace = kubernetes_namespace.kafka-namespace.metadata[0].name
  depends_on = [kubernetes_namespace.kafka-namespace]
}