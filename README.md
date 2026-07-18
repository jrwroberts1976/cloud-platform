#Cloud Platform Engineering Lab

A production-style cloud engineering project demonstrating Infrastructure as Code, automation, monitoring, security, and DevOps practices using AWS, Terraform, Ansible, Docker and Kubernetes.

The project is being built incrementally using industry best practices and serves as both a learning platform and a professional portfolio demonstrating modern cloud engineering skills.

---

# Project Goals

- Provision AWS infrastructure using Terraform Infrastructure as Code
- Build reusable Terraform modules for scalable deployments
- Implement secure cloud networking and identity management
- Automate server configuration using Ansible
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
- Ansible
- Docker
- Kubernetes (k3s)
- GitHub Actions
- Prometheus
- Grafana
- Loki
- CrowdSec
- Authelia
- Linux

---

# Current Status

| Phase | Status |
|--------|--------|
| Project Foundation | ✅ Complete |
| AWS Bootstrap (Terraform Remote State) | ✅ Complete |
| AWS Networking | ✅ Complete |
| EC2 Compute | ✅ Complete |
| Configuration Management (Ansible) | 🚧 In Progress |
| Container Platform | ⬜ Planned |
| Monitoring & Observability | ⬜ Planned |
| CI/CD (GitHub Actions) | ⬜ Planned |
| Kubernetes (k3s) | ⬜ Planned |

---

# Current Architecture

The project currently includes:

- Raspberry Pi cloud engineering workstation
- AWS account configured for Infrastructure as Code
- Terraform bootstrap environment
- Remote Terraform state stored in Amazon S3
- Terraform state locking using Amazon DynamoDB
- Modular Terraform repository structure
- AWS VPC networking
- Public and private subnets
- Internet Gateway and routing configuration
- EC2 compute instance deployed using Terraform
- Security Group configuration
- SSH key management
- Ansible automation framework
- AWS EC2 inventory management

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
├── CHANGELOG.md
├── CONTRIBUTING.md
├── LICENSE
└── README.md
Directory Overview
Directory	Purpose
.github/workflows	GitHub Actions workflows for Continuous Integration and Continuous Deployment.
ansible	Server configuration, inventories, playbooks and reusable automation roles.
diagrams	Architecture diagrams, network topology diagrams and infrastructure illustrations.
docker	Docker Compose files and container configurations.
docs	Project documentation, architecture decisions, deployment guides and progress tracking.
images	Screenshots, diagrams and supporting documentation images.
kubernetes	Kubernetes manifests, Helm charts and future GitOps resources.
scripts	Utility scripts used to automate common development tasks.
terraform/bootstrap	Terraform configuration used to create remote state infrastructure.
terraform/environments	Environment-specific Terraform deployments.
terraform/modules	Reusable Terraform modules shared between environments.
Project Design Principles

The repository is organised using modern Infrastructure as Code and Platform Engineering practices.

Key principles include:

Infrastructure managed entirely as code.
Modular and reusable Terraform architecture.
Clear separation between reusable modules and environments.
Configuration management through Ansible.
Version-controlled infrastructure using Git and GitHub.
Security-first design.
Documentation maintained alongside source code.
Automation-first approach using Terraform, Ansible and GitHub Actions.
Designed to support Development, Test and Production environments.
Next Milestone

The next phase of the project is to build the container platform layer.

Planned work includes:

Complete Docker deployment using Ansible
Configure Docker Compose
Deploy first container workloads
Build monitoring platform
Implement security tooling
Begin CI/CD automation
Long-Term Roadmap

Future enhancements include:

Kubernetes (k3s) cluster deployment
GitHub Actions deployment pipeline
Automated infrastructure testing
Monitoring and observability platform
Centralised logging
Cost monitoring and optimisation
Security hardening
Secrets management
Disaster recovery documentation
Hybrid cloud integration with the on-premises homelab
