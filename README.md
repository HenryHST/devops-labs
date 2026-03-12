# devops-labs

Sammlung von **DevOps- und Platform-Labs**: Tutorials und wiederverwendbare Konfigurationen (Terraform, Helm, Kubernetes) für GitOps, Observability, Kafka auf Kubernetes und Hetzner Cloud.

## Übersicht der Labs

| Lab | Thema |
|-----|--------|
| [**10**](10/) | AKS (Azure Kubernetes Service) + ArgoCD |
| [**20**](20/) | ArgoCD: App of Apps vs. ApplicationSets (GitOps) |
| [**30**](30/) | Observability-Stack (Grafana, Loki, Promtail) per Terraform |
| [**40**](40/) | K8s-Audit-Logs überwachen mit Loki, Grafana & Prometheus |
| [**50-kubescape**](50-kubescape/) | Observability-Stack + Kubescape |
| [**51**](51/) | Observability-Stack (Grafana, Loki, Prometheus, Promtail) |
| [**60**](60/) | Mermaid-Gantt-Diagramme / Timeline-Beispiele |
| [**70**](70/) | Kafka auf Kubernetes (Strimzi) + Prometheus/Grafana |
| [**80**](80/) | Terraform-Module für Hetzner Cloud (Server, DNS, Firewall) |

## Tech-Stack

- **Infrastructure as Code:** Terraform (Azure, Hetzner, Kubernetes, Helm)
- **GitOps:** ArgoCD (App of Apps, ApplicationSets)
- **Observability:** Grafana, Loki, Promtail, Prometheus
- **Streaming:** Kafka (Strimzi Operator)
- **Security:** Kubernetes-Audit-Logs, Kubescape

## Dokumentation

- [**Projekt-Review**](docs/PROJECT_REVIEW.md) – Übersicht, Stärken und Empfehlungen
- [Contributing](CONTRIBUTING.md) – Beitragen und PR-Prozess
- [Changelog](CHANGELOG.md) – Änderungshistorie

## Lizenz

Siehe [LICENSE](LICENSE).
