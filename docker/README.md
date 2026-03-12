# Docker Images: Terraform & OpenTofu (Alpine)

Alpine-based Docker images for [HashiCorp Terraform](https://www.terraform.io/) and [OpenTofu](https://opentofu.org/), built with multi-stage builds, non-root users, and version pinning.

## Build

From the **repository root**:

```bash
# Terraform (default: 1.9.6)
docker build -f docker/Dockerfile.terraform -t terraform:1.9.6 .

# Override version
docker build -f docker/Dockerfile.terraform --build-arg TERRAFORM_VERSION=1.8.0 -t terraform:1.8.0 .

# OpenTofu (default: 1.9.1)
docker build -f docker/Dockerfile.opentofu -t opentofu:1.9.1 .

# Override version
docker build -f docker/Dockerfile.opentofu --build-arg OPENTOFU_VERSION=1.9.0 -t opentofu:1.9.0 .
```

## Run

Mount your Terraform/OpenTofu project directory into `/workspace` (default working directory):

```bash
# Terraform
docker run --rm -v "$(pwd):/workspace" -w /workspace terraform:1.9.6 version
docker run --rm -v "$(pwd):/workspace" -w /workspace terraform:1.9.6 init
docker run --rm -v "$(pwd):/workspace" -w /workspace terraform:1.9.6 plan

# OpenTofu
docker run --rm -v "$(pwd):/workspace" -w /workspace opentofu:1.9.1 version
docker run --rm -v "$(pwd):/workspace" -w /workspace opentofu:1.9.1 init
```

Containers run as non-root user (UID 1000). For provider downloads and state, ensure the mounted directory is writable by that user (e.g. `chown` or run with same UID as host).

## Files

| File | Description |
|------|-------------|
| `Dockerfile.terraform` | Terraform on Alpine; download from releases.hashicorp.com with GPG + SHA256 verification |
| `Dockerfile.opentofu` | OpenTofu on Alpine; binary copied from official minimal image |
| `.dockerignore` | Keeps build context small when building from `docker/` |

## Best practices applied

- **Multi-stage builds**: Only the CLI binary (and minimal runtime deps) in the final image.
- **Non-root user**: Both images run as dedicated user (terraform/tofu, UID 1000).
- **Pinned versions**: Alpine 3.20; Terraform/OpenTofu version via build-arg with sensible default.
- **Verification (Terraform)**: GPG signature and SHA256 checksum verification of the release archive.
- **OCI labels**: `org.opencontainers.image.*` for title, description, version.
