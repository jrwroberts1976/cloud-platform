# Cloud Platform Engineering Lab

A production-style cloud engineering project demonstrating Infrastructure as Code, automation, monitoring, security, and DevOps practices using AWS and Terraform.

The project is being built incrementally using industry best practices and serves as both a learning platform and a professional portfolio demonstrating modern cloud engineering skills.

---

# Project Goals

- Provision AWS infrastructure using Terraform Infrastructure as Code
- Build reusable Terraform modules for scalable deployments
- Implement secure cloud networking and identity management
- Deploy containerised workloads using Docker and Kubernetes
- Implement monitoring, logging and observability
- Automate infrastructure deployments using GitHub Actions
- Demonstrate production-style DevOps and Platform Engineering practices

---

# Learning Objectives

This repository is being developed as a practical cloud engineering portfolio to demonstrate experience with:

- AWS Cloud
- Infrastructure as Code (Terraform)
- Linux Administration
- Automation
- DevOps
- Platform Engineering
- Cloud Security
- Monitoring & Observability
- GitOps workflows

---

# Technology Stack

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

---

# Current Status

| Phase | Status |
|--------|--------|
| Project Foundation | ✅ Complete |
| AWS Bootstrap (Terraform Remote State) | ✅ Complete |
| AWS Networking | 🚧 In Progress |
| EC2 Compute | ⬜ Planned |
| Configuration Management (Ansible) | ⬜ Planned |
| Container Platform | ⬜ Planned |
| Monitoring & Observability | ⬜ Planned |
| CI/CD (GitHub Actions) | ⬜ Planned |
| Kubernetes (k3s) | ⬜ Planned |

---

# Current Architecture

The project currently includes:

- AWS account configured for Infrastructure as Code
- Terraform bootstrap environment
- Remote Terraform state stored in Amazon S3
- Terraform state locking using Amazon DynamoDB
- Modular Terraform repository structure
- GitHub source control with SSH authentication
- Raspberry Pi development workstation running Debian 13

---

# Repository Structure

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
│   │   └── Terraform backend bootstrap (Amazon S3 + DynamoDB)
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

---

# Directory Overview

| Directory | Purpose |
|-----------|---------|
| **.github/workflows** | GitHub Actions workflows for Continuous Integration and Continuous Deployment (CI/CD). |
| **ansible** | Ansible inventories, playbooks and reusable roles for server configuration and application deployment. |
| **diagrams** | Architecture diagrams, network topology diagrams and infrastructure illustrations. |
| **docker** | Docker Compose files and supporting container configurations. |
| **docs** | Project documentation, architecture decisions, deployment guides, progress tracking and project roadmap. |
| **images** | Screenshots, diagrams and supporting documentation images. |
| **kubernetes** | Kubernetes manifests, Helm charts and future GitOps resources. |
| **scripts** | Utility scripts used to automate common development and deployment tasks. |
| **terraform/bootstrap** | Bootstrap configuration used to create the Terraform remote backend (Amazon S3 and DynamoDB). |
| **terraform/environments** | Environment-specific Terraform configurations for Development, Test and Production. |
| **terraform/modules** | Reusable Terraform modules shared across multiple environments. |

---

# Project Design Principles

The repository is organised using modern Infrastructure as Code and Platform Engineering practices.

Key principles include:

- Infrastructure managed entirely as code.
- Modular and reusable Terraform architecture.
- Clear separation between reusable modules and environment-specific configuration.
- Version-controlled infrastructure using Git and GitHub.
- Security-first design.
- Documentation maintained alongside source code.
- Automation-first approach using Terraform, GitHub Actions and Ansible.
- Designed to support Development, Test and Production environments.

---

# Next Milestone

The next phase of the project is to build the AWS networking layer using Terraform.

Planned work includes:

- Create AWS VPC
- Create public and private subnets
- Configure Internet Gateway
- Configure Route Tables
- Configure Security Groups
- Deploy first EC2 instance
- Migrate Terraform environments to use the remote backend

---

# Long-Term Roadmap

Future enhancements include:

- Kubernetes (k3s) cluster deployment
- GitHub Actions deployment pipeline
- Automated Ansible provisioning
- Monitoring and observability stack
- Container platform migration
- Cost monitoring and optimisation
- Security hardening
- Hybrid cloud integration with the on-premises homelab
