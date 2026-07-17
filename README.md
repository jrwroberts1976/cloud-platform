# Cloud Platform

A production-style cloud engineering project demonstrating Infrastructure as Code, automation, monitoring, security, and DevOps practices using AWS and Terraform.

## Project Goals

- Deploy AWS infrastructure using Terraform
- Build reusable Infrastructure as Code modules
- Implement monitoring and observability
- Automate deployments with GitHub Actions
- Deploy containerised applications
- Build a hybrid cloud architecture
- Demonstrate cloud engineering best practices

## Technology Stack

- AWS
- Terraform
- Docker
- Kubernetes (k3s)
- Ansible
- GitHub Actions
- Prometheus
- Grafana
- Loki
- CrowdSec
- Authelia
- Linux (Debian)

## Current Status

✅ Foundation Complete

🚧 AWS Infrastructure

⬜ Container Platform

⬜ Monitoring

⬜ CI/CD

⬜ Kubernetes

## Repository Structure


```text
cloud-platform/
│
├── .github/
│   └── workflows/
│       └── GitHub Actions workflows (planned)
│
├── ansible/
│   ├── inventory/
│   ├── playbooks/
│   └── roles/
│
├── diagrams/
│   └── Architecture and network diagrams
│
├── docker/
│   └── Docker Compose files and container configurations
│
├── docs/
│   ├── Architecture.md
│   ├── Blockers.md
│   ├── Decisions.md
│   ├── Deployment.md
│   ├── Progress.md
│   └── ProjectRoadmap.md
│
├── images/
│   └── Screenshots and supporting images
│
├── kubernetes/
│   └── Kubernetes manifests and Helm charts (planned)
│
├── scripts/
│   └── Automation and utility scripts
│
├── terraform/
│   ├── bootstrap/
│   │   └── Terraform backend (S3/DynamoDB) configuration
│   │
│   ├── environments/
│   │   ├── dev/
│   │   ├── test/
│   │   └── prod/
│   │
│   └── modules/
│       ├── ec2/
│       ├── iam/
│       ├── monitoring/
│       ├── networking/
│       └── security-groups/
│
├── .gitignore
├── CHANGELOG.md          (planned)
├── CONTRIBUTING.md       (planned)
├── LICENSE               (planned)
└── README.md
```

## Directory Overview

| Directory                  | Purpose                                                                                                  |
| -------------------------- | -------------------------------------------------------------------------------------------------------- |
| **.github/workflows**      | GitHub Actions workflows for Continuous Integration and Continuous Deployment (CI/CD).                   |
| **ansible**                | Ansible inventories, playbooks and reusable roles for server configuration and application deployment.   |
| **diagrams**               | Architecture diagrams, network topology diagrams and infrastructure illustrations.                       |
| **docker**                 | Docker Compose files and supporting container configurations.                                            |
| **docs**                   | Project documentation, architecture decisions, deployment guides, progress tracking and project roadmap. |
| **images**                 | Screenshots, diagrams and supporting documentation images.                                               |
| **kubernetes**             | Kubernetes manifests, Helm charts and future GitOps resources.                                           |
| **scripts**                | Utility scripts used to automate common development and deployment tasks.                                |
| **terraform/bootstrap**    | Bootstrap configuration used to create the Terraform remote backend (Amazon S3 and DynamoDB).            |
| **terraform/environments** | Environment-specific Terraform configurations for development, testing and production.                   |
| **terraform/modules**      | Reusable Terraform modules shared across multiple environments.                                          |

## Project Design Principles

The repository is organised to follow modern Infrastructure as Code and Platform Engineering practices.

Key principles include:

* Clear separation of reusable modules and environment-specific configuration.
* Infrastructure managed entirely as code.
* Version-controlled deployments through Git.
* Modular and reusable Terraform architecture.
* Documentation maintained alongside the source code.
* Automation-first approach using GitHub Actions, Terraform and Ansible.
* Designed to support multiple deployment environments (Development, Test and Production).

